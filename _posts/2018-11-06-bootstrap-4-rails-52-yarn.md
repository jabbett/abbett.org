---
layout: post
title:  "Bootstrap 4 in Rails 5.2 with Yarn"
description: "Simple instructions so I don't forget"
date:   2018-11-06 14:34:00 -0400
---

## Install libraries with yarn

```
$ yarn add jquery
$ yarn add popper.js
$ yarn add bootstrap
```

These get installed in the `node_modules` directory. Here are the relevant paths:

```
node_modules
├─ bootstrap
│  ├─ dist
│  │  └─ js
│  └─ scss
├─ jquery
└─ popper.js
   └─ dist
      └─ umd
```

## Import styles in application.scss

```
@import "bootstrap/scss/bootstrap";
```

I like to import the source SASS files directly so I have access to all the variables.

## Require JavaScript in application.js

```
//= require jquery
//= require popper.js/dist/umd/popper
//= require bootstrap/dist/js/bootstrap
```
