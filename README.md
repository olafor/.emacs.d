# Konfiguration för Emacs
* Main orgmode configuration provided separately
* Not usable out-of-the-box without the external orgmode configuration

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
