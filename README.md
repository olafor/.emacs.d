# Min huvudsakliga konfiguration för Emacs
* Main orgmode configuration provided separately
* Not usable out-of-the-box without the external orgmode configuration

## Condensed Configuration (TBD)
* Available in branch "condensed"
* No dependencies outside of Emacs
* No external orgmode configuration

## Setup
### Install Packages
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
M-x all-the-icons-install-fonts
