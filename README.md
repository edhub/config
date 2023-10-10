This repo manages my configs for shell & git & vim.

Clone this repo under `~/dev` folder. Run install.sh to install gitconfig and
zsh configs.

### basic gitconfig

### ignore .idea .DS_Store

```
git config --global core.excludesfile ~/dev/config/gitignore
```

### zshrc

```
echo "source $HOME/dev/config/zshrc" >> ~/.zshrc
```

### install tools with homebrew

```
brew install autojump bat neovim starship node eza tmux wget fd fzf helix tokei zsh-autosuggestions
brew install font-hack-nerd-font squirrel alacritty
```

### Config macbook pro

```
pmset -c hibernatemode 0
pmset -a standbydelay 86400
```
