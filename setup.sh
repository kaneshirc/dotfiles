git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh

ln -s ~/dotfiles/custom.aliases.bash ~/.bash_it/aliases/

DOT_FILES=(.gitconfig .gitignore .inputrc)
for file in ${DOT_FILES[@]}
do
    ln -s ~/dotfiles/$file ~/$file
done

source ~/.bashrc

bash-it enable completion git ssh

echo "" >> ~/.bashrc
echo "source ~/dotfiles/custom.completion.bash" >> ~/.bashrc
echo "source ~/dotfiles/custom.option.bash" >> ~/.bashrc

exec $SHELL -l

