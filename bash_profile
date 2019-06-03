# Set command line edit mode to vi
set -o vi

# ==================
# pretty prompt
COLOR_RED="\033[0;31m"
COLOR_YELLOW="\033[0;33m"
COLOR_GREEN="\033[0;32m"
COLOR_OCHRE="\033[38;5;95m"
COLOR_BLUE="\033[0;34m"
COLOR_WHITE="\033[0;37m"
COLOR_GREY="\033[30;1m"
COLOR_RESET="\033[0m"



function file_count() {
    ls -1 | wc -l | sed 's: ::g'
}

PS1="\n"
PS1+="\[$COLOR_GREY\]\D{%T %F}\n\n"
PS1+="\u@\h \[$COLOR_BLUE\]\w \[$COLOR_GREY\]\$(file_count) files\n"
PS1+="\[$COLOR_BLUE\]$\[$COLOR_RESET\] "
export PS1

# =======================

# enable color support for grep
alias grep='grep --color=auto'

# Some shortcuts for different directory listings
alias ls='ls -hFG' # classify files in colour
alias la='ls -A' # all but . and ..
alias ll='ls -lA' # long list without . and ..

# Copy current full path
alias pwdc="pwd | tr -d '\n' | pbcopy"

# nvim
alias vi="nvim"
alias vim="nvim"

# git auto complete. reuire bash-completion installed.
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# set proxy. With shadowsocks-ng
alias setproxy="export ALL_PROXY=socks5://127.0.0.1:1086 && echo \"set proxy: ALL_PROXY=socks5://127.0.0.1:1086\""
alias unsetproxy="unset ALL_PROXY && echo \"unset proxy\""

# brew daily
alias brewdaily="setproxy && brew upgrade && brew cleanup && unsetproxy"
export HOMEBREW_AUTO_UPDATE_SECS=86400 # brew auto update only happen once per day

