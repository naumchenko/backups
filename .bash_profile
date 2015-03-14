# git command autocompletion script
source .scripts_bash/git-completion.sh
source .scripts_bash/shell_wrapers.sh

alias tailf='tailf -f'
alias ll='ls -lhaG'
alias l='ls -lhaG'

alias gst='git status'
alias gco='git checkout'
alias gci='git commit'
alias grb='git rebase'
alias gbr='git branch'
alias gad='git add -A'
alias gpl='git pull'
alias gpu='git push'
alias glg='git log --date-order --all --graph --format="%C(green)%h%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'
alias glg2='git log --date-order --all --graph --name-status --format="%C(green)%H%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'



# up 'n' folders
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'


# grep with color
alias grep='grep --color=auto'

# refresh shell
alias reload='source ~/.bash_profile'

###############################
### ENVIRONMENTAL VARIABLES ###
###############################


# Change prompt

# Custom bash prompt via kirsle.net/wizards/ps1.html
export PS1="\[$(tput bold)\]\[$(tput setaf 2)\][\[$(tput setaf 7)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 0)\]\h \[$(tput setaf 2)\]\W\[$(tput setaf 2)\]]\[$(tput setaf 0)\]\\$ \[$(tput sgr0)\]"


export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


alias v.d='vagrant destroy'
alias v.u='vagrant up'
