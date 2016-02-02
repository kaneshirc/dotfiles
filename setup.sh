git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh

ln -s ~/dotfiles/custom.aliases.bash ~/.bash_it/aliases/
ln -s ~/dotfiles/.gitconfig ~/
ln -s ~/dotfiles/.inputrc ~/

source ~/.bash_it/bash_it.sh

echo "" >> ~/.bashrc
echo "source ~/dotfiles/custom.completion.bash" >> ~/.bashrc
echo "source ~/dotfiles/custom.option.bash" >> ~/.bashrc

exec $SHELL -l

