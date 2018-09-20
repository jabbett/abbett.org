---
layout: post
title:  "Setting up Ghost in development mode on Mac"
date:   2018-01-30 12:00:00 -0400
---
Situation: You want to evaluate [Ghost](https://ghost.org/) on your local machine. You’ve never used `nvm` before. You can’t quite find a “just follow these steps” guide.

Here’s what I had to do (using Ghost v1.20.0).

*   Open Terminal. Install `nvm` according to [https://github.com/creationix/nvm](https://github.com/creationix/nvm).

        $ curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash


*   Note the OS X advice about `nvm: command not found`. (I had to add `source ~/.bashrc` to my `.bash_profile` file.)
*   Open a new Terminal window.
*   Since Ghost [only supports LTS versions](https://docs.ghost.org/docs/supported-node-versions) of Node, use `nvm` to install it.

        $ nvm install --lts


*   `nvm` will automatically be “using” this new version now, but you can select it later with:

        $ nvm use --lts


*   Now, we’re ready to install the Ghost command-line interface:

        $ npm install -g ghost-cli


*   Create an empty directory where you want your development installation of Ghost to live, then run the installer.

        $ mkdir myblog
        $ cd myblog
        $ ghost install local


*   When the installer completes, you’ll get a URL to access it—something like like `http://localhost:2368/`. Open that URL in a browser. You’ll see some elegant, placeholder content.
*   But you probably want to see the _administrative interface_, right? Visit `http://localhost:2368/ghost/` and go through the quick setup process.
*   I quickly got to a point where I wanted to start making my own content. **Get rid of all the placeholder content by deleting the `ghost` user.**
