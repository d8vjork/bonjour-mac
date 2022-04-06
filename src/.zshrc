source ~/.commonrc

# OSX antigen file
source /usr/local/Cellar/antigen/2.2.3/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Load the theme
antigen theme denysdovhan/spaceship-prompt

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle common-aliases
antigen bundle compleat
antigen bundle git-extras
antigen bundle git-flow
antigen bundle npm
antigen bundle web-search
antigen bundle z
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh
antigen bundle zsh-users/zsh-completions
antigen bundle jessarcher/zsh-artisan
antigen bundle MenkeTechnologies/zsh-cargo-completion

# Tell Antigen that you're done.
antigen apply

# Setup zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Tell Antigen that you're done.
antigen apply

# Tell to Zsh that dotted files are included on wildcards (*)
setopt dotglob

# Spaceship zsh theme config
export SPACESHIP_EXEC_TIME_SHOW=false

# Last exec time functions (in ms)
function preexec() {
  timer=$(($(gdate +%s%0N)/1000000))
}

function precmd() {
  if [ $timer ]; then
    now=$(($(gdate +%s%0N)/1000000))
    elapsed=$(($now-$timer))

    export RPROMPT="%F{cyan}${elapsed}ms %{$reset_color%}"
    unset timer
  fi
}

