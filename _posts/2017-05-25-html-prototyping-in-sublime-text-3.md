---
layout: post
title:  "HTML Prototyping in Sublime Text 3"
date:   2017-05-25 12:00:00 -0400
---
These days, to better serve our engineering team, I’m doing more HTML prototyping than actual coding, so I thought I’d adopt a code editor more lightweight than RubyMine. (Generally, I’m very pleased with JetBrains products, but, as Java applications, they are resource beasts!)

As a _designer_, I’m naturally concerned with both the visual elegance of my editor as well as its efficiency.

So when I reintroduced myself to Sublime Text 3 this week, I thought I’d keep better track of the customizations I’ve made.

## Custom icon

Sublime Text’s application icon is dated. I use [this one](https://dribbble.com/shots/1582459-Sublime-Text-Icon-for-Yosemite) by [Rafael Conde](https://dribbble.com/rafahari). Much sleeker.

## Theme

This is an important choice. Hardcore developers go for dark themes, so as a _designer_, I must choose a light theme instead: in particular, [Ayu Light](https://github.com/dempfi/ayu). It looks great in their suggested font, [Roboto Mono](https://fonts.google.com/specimen/Roboto+Mono?selection.family=Roboto+Mono) – download and install it first.

You’ll need to add these preferences:

<div class="language-json highlighter-rouge"><pre class="highlight"><code><span class="p">{</span><span class="w">
  </span><span class="nt">"theme"</span><span class="p">:</span><span class="w"> </span><span class="s2">"ayu-light.sublime-theme"</span><span class="p">,</span><span class="w">
  </span><span class="nt">"color_scheme"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Packages/ayu/ayu-light.tmTheme"</span><span class="p">,</span><span class="w">
  </span><span class="nt">"font_face"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Roboto Mono"</span><span class="w">
</span><span class="p">}</span><span class="w">
</span></code></pre>
</div>

## Autosave

Nothing slows down one’s CSS tweaking like hitting Command-S with every change. Having gotten used to JetBrain’s autosave-on-lost-focus, I was delighted to see [Sublime Text has the same option](http://lucybain.com/resources/setting-up-sublime-autosave/). Add this preference:

<div class="language-json highlighter-rouge"><pre class="highlight"><code><span class="p">{</span><span class="w"> </span><span class="nt">"save_on_focus_lost"</span><span class="p">:</span><span class="w"> </span><span class="kc">true</span><span class="w"> </span><span class="p">}</span><span class="w">
</span></code></pre>
</div>

## File system power

Sublime’s Side Bar is the poor man’s “project” view. Make it powerful with [SideBarEnhancements](https://github.com/titoBouzout/SideBarEnhancements). Now you can duplicate files, open files in a browser, reveal files in the Finder, etc.

## HTML editing FTW

As far as productivity is concerned, we have a couple plugins to install.

*   [Emmet plugin](https://emmet.io/blog/sublime-text-3/): Tab-completion shorthand for writing HTML, e.g. `button.btn` ⇒ `<button class="btn"></button>`
*   [HTML-CSS-JS Prettify](https://packagecontrol.io/packages/HTML-CSS-JS%20Prettify): `Command-Shift-H` to reformat the file nicely.

## Occasional Ruby & ERB work

First, open an ERB file and make sure you see “HTML (Rails)” file type in the lower right corner of your screen. If it just says “HTML” and the ERB syntax isn’t properly colored, click HTML and select `Open all with extension as... > Rails > HTML (Rails)` from the menu.

I like [BeautifyRuby](https://github.com/CraigWilliams/BeautifyRuby) for formatting. It requires the htmlbeautifier gem, which I installed, eventually, like so:

<div class="highlighter-rouge"><pre class="highlight"><code>$ cd ~
$ which ruby
/Users/jonathan/.rvm/rubies/ruby-2.3.3/bin/ruby
$ rvm use 2.3.3@global
Using /Users/jonathan/.rvm/gems/ruby-2.3.3 with gemset global
$ gem install htmlbeautifier
</code></pre>
</div>

Then, install [BeautifyRuby](https://github.com/CraigWilliams/BeautifyRuby) and configure to your preference. Use `Cmd-Ctrl-K` to reformat the current file.

I also value the ability to `Command-Click` to symbol definitions, like I do in RubyMine, rather than use `Ctrl-R`, Sublime’s default. Per [this gist](https://gist.github.com/kendellfab/6135193), create the file `~/Library/Application Support/Sublime Text 3/Packages/User/Default (OSX).sublime-mousemap` and put this in it:

<div class="language-json highlighter-rouge"><pre class="highlight"><code><span class="p">[</span><span class="w">
    </span><span class="p">{</span><span class="w">
        </span><span class="nt">"button"</span><span class="p">:</span><span class="w"> </span><span class="s2">"button1"</span><span class="p">,</span><span class="w">
        </span><span class="nt">"count"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="p">,</span><span class="w">
        </span><span class="nt">"modifiers"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="s2">"super"</span><span class="p">],</span><span class="w">
        </span><span class="nt">"press_command"</span><span class="p">:</span><span class="w"> </span><span class="s2">"drag_select"</span><span class="p">,</span><span class="w">
        </span><span class="nt">"command"</span><span class="p">:</span><span class="w"> </span><span class="s2">"goto_definition"</span><span class="w">
    </span><span class="p">}</span><span class="w">
</span><span class="p">]</span><span class="w">
</span></code></pre>
</div>

* * *

Happy prototyping!
