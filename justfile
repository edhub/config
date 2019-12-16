# List all recipes.
list:
    just --list

# Install configs: gitconfig / zshenv / zshrc
install:
	# install git config
	git config --global --add include.path ~/dev/config/gitconfig
	git config --global core.excludesfile ~/dev/config/gitignore # ignore .idea .DS_Store
	# install zshenv
	echo "source $HOME/dev/config/zshenv" >> ~/.zshenv
	# install zshrc
	echo "source $HOME/dev/config/zshrc" >> ~/.zshrc

# Config macbook pro
maccfg:
	pmset -c hibernatemode 0
	pmset -a standbydelay 86400
