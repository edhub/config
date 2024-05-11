Clone this repo under `~/dev` folder. And then setup configs follow below
instructions.

zsh configs.

### zshrc

```
echo "source $HOME/dev/config/zshrc" >> ~/.zshrc
```

### xdg config folder

```
ln -s ~/dev/config/xdg ~/.config
```

### ignore .idea .DS_Store

```
git config --global core.excludesfile ~/dev/config/gitignore
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

```
sudo ifconfig awdl0 down # shutdown awdl to make wifi better
```
