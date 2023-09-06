#!/bin/bash
jekyll build
rsync -ptcrzvl --progress --delete _site/. jonabbett@abbett.org:/home/jonabbett/abbett-dot-org
