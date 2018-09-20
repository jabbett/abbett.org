---
layout: post
title:  "Predefined tag checkboxes with ActsAsTaggableOn"
date:   2017-06-26 12:00:00 -0400
---
Last week, I designed an interface that lets a user optionally select from a set of predefined values. Since time for implementation was short, I tried to adapt my design to use as much off-the-shelf Rails functionality as possible, i.e. no custom JavaScript or React components (for now).

Since these predefined values were quite like tags, I chose [ActsAsTaggableOn](https://github.com/mbleigh/acts-as-taggable-on) to provide the model- and controller-level functionality. But the ActsAsTaggableOn documentation prefers to skirt the matter of user interface, with but one [paltry example](https://github.com/mbleigh/acts-as-taggable-on/wiki/Tutorial-for-Posts).

In my case, I wanted to:

*   predefine the list of available values
*   show a checkbox for each available value
*   store the selected choices as ActsAsTaggableOn dictates
*   not hard-code the values in my view

A [colleague](https://twitter.com/erikraudsepp) recently used a form helper that stuck with me—[`collection_check_boxes`](http://edgeapi.rubyonrails.org/classes/ActionView/Helpers/FormOptionsHelper.html#method-i-collection_check_boxes), which renders a set of check boxes when provided a collection of options—though its documentation, too, left something to be desired, especially since I had a simple array of values and not the collection of models used in the published examples.

So, with some experimentation, here’s how I wired it all together:

<script src="https://gist.github.com/jabbett/75546a140bc133616f623686278ea6f8.js"></script>
