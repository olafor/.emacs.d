#!/usr/bin/env bash

sudo apt update

sudo apt install emacs git

mkdir repositories

mkdir themes

git clone git@github.com:GuiltyDolphin/org-evil.git repositories/org-evil

git clone git@github.com:magnars/dash.el.git repositories/dash

git clone git@github.com:ivanmarcin/emacs-tron-theme.git repositories/themes/tron-theme
