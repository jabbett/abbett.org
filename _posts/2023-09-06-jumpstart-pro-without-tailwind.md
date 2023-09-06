---
layout: post
title:  "Using Jumpstart Pro without Tailwind"
description: "Setting up your app with a clean (S)CSS slate"
date:   2023-09-06 08:55:00 -0400
---

My talented pal [Narath](https://www.maketimeflow.com/about/) recommended using [Jumpstart Pro](https://jumpstartrails.com/) for my next Ruby on Rails side project, and it was excellent advice.

There has been a bit of a learning curve coming from bare-metal Rails, where the challenge is bringing in all the right third-party gems and frameworks. With all that Jumpstart includes out of the box, my challenge is to determine what I want to keep and what's getting in my way.

Take [Tailwind](https://tailwindcss.com/). I've encountered a couple real Tailwind promoters, and I'm impressed with what they can achieve with it. But having just left the Bootstrap world in favor of custom-built design systems, Tailwind feels like a step backward for me &ndash; dozens or hundreds of CSS class references in every ERB file, making the HTML much more repetitive, less semantic, and harder to read.

So if you're like me, and you want to write your own minimal, clean CSS, here's how I've constrained Tailwind to only the `administrate` area and enabled SASS for my application.

1. Move/rename the `application.tailwind.css` into the `administrate` subfolder

		~ cd your-app-name
		~ mv app/assets/stylesheets/application.tailwind.css app/assets/stylesheets/administrate/tailwind.css

2. Move all the `components` CSS into `administrate/components`

		~ mv app/assets/stylesheets/components/* app/assets/stylesheets/administrate/components
		~ rmdir app/assets/stylesheets/components

3. Add SASS to the project with `rails css:install:sass` (ignoring the warnings)

		~ rails css:install:sass

4. Update the `build:css` script in `package.json` to compile both Tailwind and SASS. (Put the `sass` command second so that it can receive the `--watch` option passed through `Procfile.dev`)

		{
		  "scripts": {
		  	"build:css": "tailwindcss --postcss --minify -i ./app/assets/stylesheets/administrate/tailwind.css -o ./app/assets/builds/tailwind.css && sass ./app/assets/stylesheets/application.sass.scss:./app/assets/builds/application.css --no-source-map --load-path=node_modules",
		  	"build": "..."
		  }
		}

5. Test your change by running `yarn run build:css`
6. Update the `admin/application/_stylesheet.html.erb` to use the new `tailwind` CSS instead of `application`.

		<%= stylesheet_link_tag "tailwind", media: "all", "data-turbo-track": "reload" %>

7. Start writing application (S)CSS in `application.sass.scss`!
