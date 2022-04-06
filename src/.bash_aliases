alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

alias gitclean='git branch --merged | egrep -v "(^\*|master|develop)" | xargs git branch -d && git remote prune origin'
alias dockerclean='docker stop $(docker ps -aq) && docker rm $(docker ps -a -q) -f'
alias dockerwash='docker rmi $(docker images -q)'
alias dockerstop='docker stop $(docker ps -a -q)'
alias dockerkill='docker kill $(docker ps -q)'
alias dockerprune='docker system prune --all --force --volumes'
alias dockerreset='docker stop $(docker container ls -a -q) && docker system prune -a -f --volumes'
alias gs='git status'
alias gl='git log'
alias gaa='git add .'
alias gc='git commit -m'
alias ls='ls -GFh'
alias gg='lazygit'
alias lzd='lazydocker'
alias edit='ox'
alias vapor='php vendor/bin/vapor'
alias sail='bash vendor/bin/sail'
alias artisan='php artisan'
alias art='php artisan'
alias aws-fingerprint='openssl pkcs8 -in $1 -nocrypt -topk8 -outform DER | openssl sha1 -c'

# PHP stuff

function tinker() {
  if [ -z "$1" ]
    then
       while true; do php artisan tinker; done
    else
       php artisan tinker --execute="dd($1);"
  fi
}

# PHP brew versions aliases for easy swap between them
# Thanks to https://localheinz.com/blog/2020/05/05/switching-between-php-versions-when-using-homebrew/

installedPhpVersions=($(brew ls --versions | ggrep -E 'php(@.*)?\s' | ggrep -oP '(?<=\s)\d\.\d' | uniq | 
sort))

for phpVersion in ${installedPhpVersions[*]}; do
    value="{"

    for otherPhpVersion in ${installedPhpVersions[*]}; do
        if [ "${otherPhpVersion}" = "${phpVersion}" ]; then
            continue
        fi

        # unlink other PHP version
        value="${value} brew unlink php@${otherPhpVersion};"
    done

    # link desired PHP version
    value="${value} brew link php@${phpVersion} --force --overwrite; } &> /dev/null && php -v"

    alias "php@${phpVersion}"="${value}"
done
