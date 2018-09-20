---
layout: post
title:  "A guide to building webapps with IE8 support"
date:   2013-07-29 12:00:00 -0400
---
If you build web applications for healthcare, you’re fooling yourself if you don’t support legacy Internet Explorer browsers. This should make it a bit easier.

Internet Explorer 8’s market share [dropped below 10% in May](http://www.sitepoint.com/browser-trends-may-2013/), and [continues to drop](http://www.sitepoint.com/browser-trends-june-2013/), but US healthcare facilities have maintained a tight grip on Windows XP and its 4-year-old web browser despite poor performance and potential security risks.

At [ACT.md](http://act.md), we’ve catalogued all the fixes we’ve applied to our [Backbone.js](http://backbonejs.org) web application to support IE8 with the hope that we can ease the suffering of other front-end developers.

## Detect IE in JavaScript

We needed to enable jQuery CORS support for IE users (see next item), so we had to detect IE first. [Older solutions](http://stackoverflow.com/a/4228216/415665) didn’t account for IE10, which foolishly _doesn’t_ consider itself a version of IE, so we extended it.

```
var ie = (function(){

    var undef,
        v = 3,
        div = document.createElement('div'),
        all = div.getElementsByTagName('i');

    while (
        div.innerHTML = '&lt;!--[if gt IE ' + (++v) + ']&gt;&lt;i&gt;&lt;/i&gt;&lt;![endif]--&gt;',
            all[0]
        );

    if (Function('/*@cc_on return document.documentMode===10@*/')()){
        v = 10;
    }

    return v &gt; 4 ? v : undef;

}());
```

* _stackoverflow: [Javascript IE detection, why not use simple conditional comments?](http://stackoverflow.com/a/4228216/415665)_

## Disable AJAX caching

With the above, we can conditionally disable caching of AJAX requests, which, oddly, is IE’s default.

```
if (ie) {
    $.ajaxSetup({ cache: false });
}
```

<ul>
  <li><em>stackoverflow: <a href="http://stackoverflow.com/questions/4303829/how-to-prevent-jquery-ajax-caching-in-internet-explorer">How to prevent jquery ajax caching in Internet Explorer?</a></em></li>
</ul>

<h2 id="enable-cors-support">Enable CORS support</h2>

<p>When we started building our webapp, we deployed our Python-based API using Flask’s built in Werkzeug server on a different port from our front-end’s Apache web server, so we needed to use cross origin request sharing (CORS). We developed happily in Chrome by setting the jQuery <code class="highlighter-rouge">crossDomain</code> AJAX option to true, but IE would throw the cryptic error, “No Transport,” which is its peculiar way of rejecting cross-site AJAX requests.</p>

<p>We ultimately refactored our development environment to use Apache and <code class="highlighter-rouge">mod_wsgi</code> so both front and back ends could be served from the same webserver, but before that we got by with this IE CORS workaround:</p>

```
if (ie) {
    jQuery.support.cors = true;
}
```

…which shouldn’t work. Probably better to use a plugin like [jQuery-ajaxTransport-XDomainRequest](https://github.com/MoonScript/jQuery-ajaxTransport-XDomainRequest) if you have to.

*   _stackoverflow: [jQuery Call to WebService returns “No Transport” error](http://stackoverflow.com/questions/5241088/jquery-call-to-webservice-returns-no-transport-error)_

## Simulate PATCH in IE8

We use the PATCH method to save partially-modified Backbone models, but IE8 was released a year before PATCH was [formally proposed](http://tools.ietf.org/html/rfc5789) by the IETF. (Of course, PATCH has been around at least since [HTTP 1.1](http://tools.ietf.org/html/rfc2068#section-19.6.1.1).)

On the front-end we use Backbone’s `emulateHTTP` option, which sends a `POST` with an `X-HTTP-Method-Override` header.

In our Python/Flask back-end, we needed to accept this `POST` in place of a `PATCH` with an [HTTP middleware](http://flask.pocoo.org/docs/patterns/methodoverrides/).

*   _github: [HTTP PATCH method not supported in IE](https://github.com/jashkenas/backbone/issues/2152)_
*   _Flask Documentation: [Adding HTTP Method Overrides](http://flask.pocoo.org/docs/patterns/methodoverrides/)_

## Don’t use unquoted reserved words as keys

Chrome and Firefox don’t seem to mind an object like `{  return:  1,  continue:  2  }` but IE cries bloody murder. Make sure you quote your keys, e.g. `{  "return":  1,  "continue":  2  }`

## Use `height` instead of `line-height` on `input` elements

Consistently formatting `input` elements between browsers has been a challenge, especially using [Bootstrap 2](http://getbootstrap.com/2.3.2/) with the [FF DIN Web](http://www.fontshop.com/fonts/downloads/fontfont/ff_din_web_1/web_tt) typeface. Moving away from setting `line-height` on our `input` elements has made it easier.

*   _Joshua Hibbert: [Line-Height Doesn’t Work As Expected On Inputs](http://joshnh.com/2012/12/03/line-height-doesnt-work-as-expected-on-inputs/)_

## Don’t use HTML5 `placeholder` attribute

Yes, there are shims that make this work, but it was tedious and messy to use one across a Backbone-generated UI. We redesigned our forms such that `placeholder`s only provide additional instructions, but aren’t the only way for a user to identify a form field.

*   _Cory Matthews: [HTML5 Placeholder in IE and Unsupported Browsers](http://corymathews.com/html5-placeholder-in-ie/)_

## Use conditional comments for IE-specific behavior

Sometimes you need to only override IE styles. Rather than use conditional stylesheets, or hacks within your stylesheets, you can use conditional comments to apply IE-specific classes to the `html` element. We used this to fine-tune our `input` and `select` styling.

*   _stackoverflow: [css property recognized only in Internet Explorer](http://stackoverflow.com/a/4657361/415665)_

## Detect HTML5 `pushState` and redirect the user on initial access

We use clean URLs with Backbone.js, so that we don’t need nasty hash marks. This requires HTML5’s pushState functionality, and some `mod_rewrite` magic in Apache. Older browsers, though, have to fall back on the hash-marked URL. To avoid some seriously mangled URLs, we detect the lack of `pushState` support, and gracefully redirect the user to a well-formed hash-marked URL.

```
var hasPushState = Modernizr.history;

// We need to redirect you properly before getting started.
if (!hasPushState &amp;&amp; window.location.pathname != "/") {
    window.location.replace("/#" + window.location.pathname.substr(1));
} else {
    var application = new ActApplication();
    Backbone.history.start({ pushState: hasPushState });
}
```

## Route internal links through Backbone.history.navigate

Internal links should be handled by Backbone’s router, rather than your web server, so I started with [Tim Branyen’s gist](https://gist.github.com/tbranyen/1142129) and then [tweaked it for IE support](https://gist.github.com/jabbett/5199231).

```
// Use absolute URLs to navigate to anything not in your Router.
// Use delegation to avoid initial DOM selection and allow all matching elements to bubble
$(document).delegate("a", "click", function(evt) {
    // Get the anchor href and protcol
    var href = $(this).attr("href"),
        target = $(this).attr("target"),
        protocol = this.protocol;

    // 1. Ensure the protocol is not part of URL, meaning it's relative.
    // 2. Leave alone anchor URLs, since those are 'for real' now
    // 3. If target attribute is specified, let the browser handle it
    if (href.substring(0, protocol.length) !== protocol &amp;&amp; href.substring(0, 1) !== '#' &amp;&amp; target == null) {
        if (!evt.isDefaultPrevented()) {
            // Stop the event bubbling to ensure the link will not cause a page refresh
            evt.preventDefault();
            // Scroll user to the top of the page, as she would expect
            window.scrollTo(0, 0);
            // Send the URL to the router
            Backbone.history.navigate(href, true);
        }
    }
});
```
*   _jabbett: [backbone\_pushstate\_router.js](https://gist.github.com/jabbett/5199231)_

## Use modern.ie VMs to test on old versions

Finally, we use the IE8, IE9, and IE10 VirtualBox VMs from [modern.ie](http://modern.ie) to hand-test our app, along with automated cross-browser testing using [Behave](http://pythonhosted.org/behave/), [Selenium Web Driver](http://selenium-python.readthedocs.org/en/latest/), and [Sauce Labs](https://saucelabs.com/).

Sometimes we need [Fiddler](http://fiddler2.com/) to debug network issues within a VM, since the IE developer console is terrible.
