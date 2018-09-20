---
layout: post
title:  "UPA Boston 2012: Athenahealth's Mobile Electronic Health Record App"
date:   2012-05-07 12:00:00 -0400
---
_At the UPA Boston 2012 conference, Kaden Rushford & Tobias Hauner presented “On the Move with Mobile Users: Using Innovative Design & Test Techniques to Create Athenahealth’s Mobile Electronic Health Record App.”_

*   Athenahealth’s UX team started in 2008, with one person, now 22 and still hiring
*   34,000 providers using Athena software
*   Practices vary from 2-2,000 providers
*   Web-based, all users need is laptop & internet
*   In 2011, providers now using mobile phones, just like the rest of us - 75% of docs had an Apple mobile device
*   In 2010, 60% of Athena docs had iPhones
*   Built hifi prototype to show value of a mobile EHR
*   Web-based app with close-to-native feel
*   Use AJAX-driving nav for smoother transitions
*   Give users an “add to home screen” reminder for better experience
*   Subtle animations for to communicate progress (panel slides, button states)
*   Give a logical path: inbox -> patient case -> view request -> make order -> close (back to inbox)
*   Support appropriate gestures (don’t overdo it); limited gesture use makes web-based testing easier, but hacks can be disappointing (like zoom buttons versus pinch/spread gestures)
*   Bigger targets for fingers (44px)
*   Rely on standard mobile controls whenever possible
*   Simplify workflows for mobile; start very simple and add elements back when users point out difficulties/shortcomings
*   Used jQuery Mobile for prototyping

Evaluating the app at their user conference
-------------------------------------------

*   Company’s user conference was great opportunity to test and get feedback: 3 days, 39 participants, 10 hours of recording
*   Discovered an iPhone rig called “Mr. Tappy” for recording mobile tests
*   For $2.50 got strips of acrylic, used heat gun to bend it, clipped a webcam to the end: DIY rig
*   Most important tasks for docs: view patient chart, view schedule
*   Logitech software for controlling webcam: Fixed focus on content (not fingers), flipped the screen to right orientation
*   When users tested, they wanted to help make it happen.
*   Docs appreciated data density, could a get quick overview
*   Offered suggestions for tasks to do on the mobile device (read only doesn’t go far enough… when they saw the list of meds, they wanted to refill, prescribe new, right there)
*   Quick access to patient overview lets them put requests into context – when to help remotely, when to bring them in for visit
*   Docs offered this feedback even without their real data

Advice on adopting mobile
-------------------------

*   Don’t build on mobile every feature from the EHR
*   What are the quick things they’d want to do on the golf course, at soccer practice, while commuting?
*   Would not replace the desktop EHR, would not replace need for communication with staff - but all of that is okay

Retrospective
-------------

*   In one year, performed six usability studies over four release cycles
*   Getting the team to see user sessions helps build consensus on priorities: what to fix, how to fix
*   Confusing logout icon became whatever the user wanted to do with it (open chart, forward, move); moved it to bottom, gave it a proper text label
*   Layered on visual cues as feedback came in, increased the fidelity in each iteration
*   Surfaced urgent tasks to the top, even though technically redundant, because it’s a critical special case
*   Important to use real amounts of data (e.g. buttons at bottom of lists will get pushed down when list is long)
*   When looking at schedule, the empty slots are just as important for the doc to know as the appointments
*   Show doctor a readable summary/confirmation of their new prescription after having entered it in a structured way
*   In a 2011 snow emergency, docs could reach out to their patients (and other doctors) even though power was out and roads were impassable.
*   Already seeing positive impact after soft launch three weeks ago

### Presenters

*   [Kaden Rushford](http://twitter.com/krushford)
*   [Tobias Hauner](http://twitter.com/athnux)
