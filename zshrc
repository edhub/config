# Set command line edit mode to vi
set -o vi

# nvim
alias vi="nvim"
alias vim="nvim"
alias vif="nvim -o \`fzf\`"

# Some shortcuts for different directory listings
alias ls='ls -A --color' # classify files in colour
alias ll='ls -lA --color' # long list without . and ..
alias lt='lsd --tree'
alias ltd='lsd --tree --depth'


# set proxy. With shadowsocks-ng
alias setproxy="export ALL_PROXY=socks5://127.0.0.1:10000 && echo \"set proxy: ALL_PROXY=socks5://127.0.0.1:10000\""
alias unsetproxy="unset ALL_PROXY && echo \"unset proxy\""

# brew daily
alias brewdaily="setproxy && brew upgrade && brew cleanup && unsetproxy"
export HOMEBREW_AUTO_UPDATE_SECS=86400 # brew auto update only happen once per day

# bat
alias cat="bat"
