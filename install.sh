#!/bin/bash

# ===============================================================
# Install pre-requirements (Homebrew)
# ===============================================================

if [ ! command -v brew &> /dev/null ]
then
    printf "=%.0s"  $(seq 1 63)
    echo "Install missing Homebrew (required for this script)"
    printf "=%.0s"  $(seq 1 63)

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# ===============================================================
# Install Brewfile and applications
# ===============================================================
if [ -f "$HOME/Brewfile" ]
then
    mv Brewfile Brewfile.bkp
fi

curl -L https://raw.githubusercontent.com/d8vjork/bonjour-mac/HEAD/Brewfile > $HOME/Brewfile

printf "=%.0s"  $(seq 1 63)
echo "Install applications using Homebrew (brew)"
printf "=%.0s"  $(seq 1 63)

# ===============================================================
# Grab and prepare terminal stuff backing up previous
# ===============================================================

printf "=%.0s"  $(seq 1 63)
echo "Install terminal customisations and tools (backing up previous config)"
printf "=%.0s"  $(seq 1 63)

# Install Bash aliases
if [ -f "$HOME/.bash_aliases" ]
then
    mv .bash_aliases .bash_aliases.bkp
fi

curl -L https://raw.githubusercontent.com/d8vjork/bonjour-mac/HEAD/.bash_aliases > $HOME/.bash_aliases

# Install .commonrc
if [ -f "$HOME/.commonrc" ]
then
    mv .commonrc .commonrc.bkp
fi

curl https://raw.githubusercontent.com/d8vjork/bonjour-mac/HEAD/.commonrc > $HOME/.commonrc

# Install .bashrc
if [ -f "$HOME/.bashrc" ]
then
    mv .bashrc .bashrc.bkp
fi

curl https://raw.githubusercontent.com/d8vjork/bonjour-mac/HEAD/.bashrc > $HOME/.bashrc

# Install .zshrc
if [ -f "$HOME/.zshrc" ]
then
    mv .zshrc .zshrc.bkp
fi

curl https://raw.githubusercontent.com/d8vjork/bonjour-mac/HEAD/.zshrc > $HOME/.zshrc

# ===============================================================
# Preparing PHP environment with essential extensions
# ===============================================================

pecl install redis
pecl install pcov

# ===============================================================
# Install latest programming languages with tools like fnm, pyenv, jenv...
# ===============================================================

printf "=%.0s"  $(seq 1 63)
echo "Install programming languages (NodeJS, Python, Java)"
printf "=%.0s"  $(seq 1 63)

# Install latest Node LTS
fnm install --lts
# Add OpenJDK (Java 11) as its the latest stable of the free Open Source version
jenv add "$HOMEBREW_PREFIX/opt/openjdk@11/libexec/openjdk.jdk/Contents/Home"
pyenv install 

# Open a new Terminal application window/instance to get all these installed stuff ready and loaded
osascript -e 'tell application "Terminal" to activate'

# Close this instance
exit

# Just in case :)
echo "Installation finished, please close this terminal window and/or reopen a new one if needed"