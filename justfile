# List all recipes.
list:
    just --list

# Install configs: gitconfig / zshenv / zshrc
install:
	# install git config
	git config --global --add include.path ~/dev/config/gitconfig
	# install zshenv
	echo "source $HOME/dev/config/zshenv" >> ~/.zshenv
	# install zshrc
	echo "source $HOME/dev/config/zshrc" >> ~/.zshrc
