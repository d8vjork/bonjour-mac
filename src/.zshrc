source ~/.commonrc

# Sheldon use ZSH stuff like autocompletions etc - maybe not needed
#export ZSH="$HOME/.sheldon/repos/github.com/ohmyzsh/ohmyzsh"

# Load the plugins manager
eval "$(sheldon source)"

# Load the prompt theme
eval "$(starship init zsh)"

# Tell to Zsh that dotted files are included on wildcards (*)
setopt dotglob
