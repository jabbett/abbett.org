---
layout: post
title:  "Introducing Abraham"
date:   2016-11-22 12:00:00 -0400
---
Recently, we began building product tours into ACT.md, and while it wasn’t so technically challenging (thanks to HubSpot’s [Shepherd](http://github.hubspot.com/shepherd/docs/welcome/) and [Tether](http://tether.io/)), there were many small hurdles to getting the little boxes to appear on the screen (and then not appear later):

1.  Compose the content for each tour step.
2.  Write the JavaScript tour code for each page.
3.  Create a database table for storing per-user tour completion data
4.  Implement a REST API for marking a tour as completed.
5.  Code some logic to discern whether or not the user should see a page’s tour.
6.  Rigorously test all of these little bits.
7.  Deliver product tours to users.

This work led to a better experience for our users — we can now introduce important concepts and new features as they explore the interface — but I was deflated by the tedium of making it work. As a small UX team supporting many full-stack developers, we need to make sure that good UX decisions, like embedding helpful content, are also obvious coding decisions: when beneficial interface patterns become ubiquitous, implementing them should get easier.

In that spirit, we built Abraham: a Rails gem that, once installed, takes all the above steps and turns them into this:

1.  Compose the content for each tour step.
2.  Deliver product tours to users.

Repetitive JavaScript code is now a simple configuration file that developers, designers, and customer support staff can read and tweak:

Plus, it’s easily internationalizable.

## What’s next?

While Version 1.0 does a real job for us at ACT.md, there are some obvious directions to take Abraham:

*   Expose more Shepherd options through the simplified YAML config syntax.
*   Support “new feature” tours that are shown only to users active at time of release.
*   Give users a way to rewatch a tour they’ve already finished, if they want to brush up later.
*   Show targeted tours based on user demographics or other variables.

[https://github.com/actmd/abraham](https://github.com/actmd/abraham)
