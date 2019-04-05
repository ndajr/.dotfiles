# system naviagation
alias l="ls -latr"       # List in long format, include dotfiles
alias ld="ls -ld */"   # List in long format, only directories
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias lmf='tail -f -n 50 `ls -t .| head -1`'
alias p='cd ~/projetos'
alias gop='cd ~/go/src/github.com/neemiasjnr'
alias .f='cd ~/.dotfiles/'

alias drun='docker run -it --rm'
alias dexec='docker exec -e COLUMNS="`tput cols`" -e LINES="`tput lines`" -it'
alias dnrun='docker run -it --rm -u $(id -u):$(id -g)'
alias dnexec='docker exec -it -u $(id -u):$(id -g)'
