# Set command line edit mode to vi
set -o vi

# nvim
alias vi="nvim"
alias vim="nvim"

# Some shortcuts for different directory listings
alias ls='ls -hFG' # classify files in colour
alias la='ls -A' # all but . and ..
alias ll='ls -lA' # long list without . and ..

# set proxy. With shadowsocks-ng
alias setproxy="export ALL_PROXY=socks5://127.0.0.1:1086 && echo \"set proxy: ALL_PROXY=socks5://127.0.0.1:1086\""
alias unsetproxy="unset ALL_PROXY && echo \"unset proxy\""

# brew daily
alias brewdaily="setproxy && brew upgrade && brew cleanup && unsetproxy"
export HOMEBREW_AUTO_UPDATE_SECS=86400 # brew auto update only happen once per day