# Konfiguration för Emacs
* Main orgmode configuration provided separately
* Not usable out-of-the-box without the external orgmode configuration

## Condensed Configuration
* Available in branch "condensed"
* No dependencies outside of Emacs
* No external orgmode configuration

## Setup
### Install Packages
Only for Master Version
```shell
APT_PACKAGES=(
    emacs
    texlive-latex-recommended
    texlive-latex-extra
    texlive-fonts-recommended
    texlive-base
    texlive-latex-base
    ripgrep
)
apt update
apt install $APT_PACKAGES
```

### Install  Icons & Fonts
Use the following command with M-x during first setup:
```emacs-lisp
all-the-icons-install-fonts
```
