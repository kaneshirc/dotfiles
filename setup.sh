git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh

ln -s ~/dotfiles/custom.aliases.bash ~/.bash_it/aliases/
ln -s ~/dotfiles/.gitconfig ~/

source ~/.bash_it/bash_it.sh

bash-it enable completion git ssh

echo "" >> ~/.bashrc
echo "source ~/dotfiles/custom.completion.bash" >> ~/.bashrc

exec $SHELL -l

