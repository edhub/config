# user bin
export PATH=$HOME/bin:$PATH

# dart
export PATH=$PATH:$HOME/.pub-cache/bin

# rust
export PATH=$HOME/.cargo/bin:$PATH
export RUSTC_WRAPPER=sccache

# flutter
export PATH=$HOME/dev/sdk/flutter/bin:$PATH
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
#export ENABLE_FLUTTER_DESKTOP=true

# fastlane
export PATH=$HOME/.fastlane/bin:$PATH

# fzf for vim
# export FZF_DEFAULT_COMMAND='rg --files --sortr modified'
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
