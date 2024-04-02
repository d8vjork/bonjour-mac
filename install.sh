#!/bin/bash

# ===============================================================
# Install pre-requirements (Homebrew)
# ===============================================================

if [ ! command -v brew &> /dev/null ]
then
    printf "=%.0s"  $(seq 1 63)
    printf "\n"
    printf "Install missing Homebrew (required for this script)\n"
    printf "=%.0s"  $(seq 1 63)
    printf "\n"

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# ===============================================================
# Install Brewfile and applications
# ===============================================================
if [ -f "$HOME/Brewfile" ]
then
    mv Brewfile Brewfile.bkp
fi

curl -L https://raw.githubusercontent.com/d8vjork/bonjour-mac/HEAD/src/Brewfile > $HOME/Brewfile

printf "=%.0s"  $(seq 1 63)
printf "\n"
printf "Install applications using Homebrew (brew)\n"
printf "=%.0s"  $(seq 1 63)
printf "\n"

brew bundle install

# ===============================================================
# Grab and prepare Terminal stuff backing up previous
# ===============================================================

printf "=%.0s"  $(seq 1 63)
printf "\n"
printf "Install terminal customisations and tools (backing up previous config)\n"
printf "=%.0s"  $(seq 1 63)
printf "\n"

# Install Bash aliases
if [ -f "$HOME/.bash_aliases" ]
then
    mv .bash_aliases .bash_aliases.bkp
fi

curl -L https://raw.githubusercontent.com/d8vjork/bonjour-mac/HEAD/src/.bash_aliases > $HOME/.bash_aliases

# Install .commonrc
if [ -f "$HOME/.commonrc" ]
then
    mv .commonrc .commonrc.bkp
fi

curl -L https://raw.githubusercontent.com/d8vjork/bonjour-mac/HEAD/src/.commonrc > $HOME/.commonrc

# Install .bashrc
if [ -f "$HOME/.bashrc" ]
then
    mv .bashrc .bashrc.bkp
fi

curl -L https://raw.githubusercontent.com/d8vjork/bonjour-mac/HEAD/src/.bashrc > $HOME/.bashrc

# Install .zshrc
if [ -f "$HOME/.zshrc" ]
then
    mv .zshrc .zshrc.bkp
fi

curl -L https://raw.githubusercontent.com/d8vjork/bonjour-mac/HEAD/src/.zshrc > $HOME/.zshrc

# Configure Starship (terminal prompt theme)
curl -L https://raw.githubusercontent.com/d8vjork/bonjour-mac/HEAD/src/.config/starship.toml > $HOME/.config/starship.toml

# Configure Sheldon plugins (zsh terminal tools)
curl -L https://raw.githubusercontent.com/d8vjork/bonjour-mac/HEAD/src/.config/sheldon/plugins.toml > $HOME/.config/sheldon/plugins.toml

# ===============================================================
# Preparing PHP environment with essential extensions
# ===============================================================

pecl install redis

# Required to compile some extensions like pcov
# https://freek.dev/2151-fixing-the-dreaded-pcre2h-file-not-found-error-when-installing-imagick
ln -s $HOMEBREW_PREFIX/opt/pcre2/include/pcre2.h $HOMEBREW_PREFIX/opt/php@8.1/include/php/ext/pcre/
ln -s $HOMEBREW_PREFIX/opt/pcre2/include/pcre2.h $HOMEBREW_PREFIX/opt/php@8.2/include/php/ext/pcre/
ln -s $HOMEBREW_PREFIX/opt/pcre2/include/pcre2.h $HOMEBREW_PREFIX/opt/php@8.3/include/php/ext/pcre/
pecl install pcov

# ===============================================================
# Install latest programming languages with tools like fnm, pyenv, jenv...
# ===============================================================

printf "=%.0s"  $(seq 1 63)
printf "\n"
printf "Install programming languages (NodeJS, Python, Java)\n"
printf "=%.0s"  $(seq 1 63)
printf "\n"

# Install latest Node LTS
fnm install --lts
# Add OpenJDK as its the latest stable of the free Open Source version
jenv add "$HOMEBREW_PREFIX/opt/openjdk/libexec/openjdk.jdk/Contents/Home"
pyenv install

# ===============================================================
# Finalise preparing Mac OS user preferences
# ===============================================================

printf "=%.0s"  $(seq 1 63)
printf "\n"
printf "Finalise preparing Mac OS user preferences\n"
printf "=%.0s"  $(seq 1 63)
printf "\n"

# Grab and install retina-ready font used in Terminal profile
curl -L https://raw.githubusercontent.com/d8vjork/bonjour-mac/HEAD/src/FiraCodeNerdFont-Retina.ttf > $HOME/Library/Fonts

# Grab to temporary folder and install (open) Terminal profile
curl -L https://raw.githubusercontent.com/d8vjork/bonjour-mac/HEAD/src/D8vjork.terminal > /tmp/D8vjork.terminal

open /tmp/D8vjork.terminal

# Grab user preferences file
curl -L https://raw.githubusercontent.com/d8vjork/bonjour-mac/HEAD/src/.macos > $HOME/.macos

# Need to logout / login again to apply .macos custom preferences - THIS NEED TO BE LAST
osascript -e 'tell app "System Events" to log out'
