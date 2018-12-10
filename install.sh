git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh

# custom settings for bash
ln -s ~/dotfiles/custom.bash ~/.bash_it/custom/
ln -s ~/dotfiles/custom.aliases.bash ~/.bash_it/aliases/
ln -s ~/dotfiles/custom.completion.bash ~/.bash_it/completion/
ln -s ~/dotfiles/custom.plugins.bash ~/.bash_it/plugins/

DOT_FILES=(.gitconfig .gitignore .tigrc .inputrc)
for file in ${DOT_FILES[@]}
do
    ln -s ~/dotfiles/$file ~/$file
done

touch ~/.bashrc.local
echo "source \"\$HOME\"/.bashrc.local" >> ~/.bashrc

echo ""
echo "Open a new shell/tab/terminal"

