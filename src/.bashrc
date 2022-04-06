source ~/.commonrc

# Shell prompt.
# username@hostname:path$
PS1="\[\e]0;\u@\h: \w\a\]\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

# Remove ZSH default warning when using Bash on macOS.
export BASH_SILENCE_DEPRECATION_WARNING=1

# Tell to Bash to copy/move/etc dotted files
shopt -s dotglob
