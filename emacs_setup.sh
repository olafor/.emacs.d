#!/usr/bin/env bash

## BASICS
apt update
apt install emacs texlive-latex-recommended texlive-latex-extra \
    texlive-fonts-recommended texlive-base texlive-latex-base

## DIRECTORIES
if [ ! -d "repositories" ]; then
    mkdir repositories
fi

if [ ! -d "themes" ]; then
    mkdir themes
fi

## REPOSITORIES
if [ ! -d "repositories/evil" ]; then
    git clone https://github.com/emacs-evil/evil.git repositories/evil
fi

if [ ! -d "repositories/dash" ]; then
    git clone https://github.com/magnars/dash.el.git repositories/dash
fi

if [ ! -d "repositories/org-evil" ]; then
    git clone https://github.com/GuiltyDolphin/org-evil.git repositories/org-evil
fi

if [ ! -d "repositories/themes/tron-theme" ]; then
    git clone https://github.com/ivanmarcin/emacs-tron-theme.git repositories/themes/tron-theme
fi
