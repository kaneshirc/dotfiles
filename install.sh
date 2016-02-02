git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh

source ~/.bashrc

# enable settings
#bash-it enable aliase git
bash-it enable completion git ssh
#bash-it enable plugin git

# custom settings for bash
ln -s ~/dotfiles/custom.aliases.bash ~/.bash_it/aliases/
ln -s ~/dotfiles/custom.completion.bash ~/.bash_it/completion/
ln -s ~/dotfiles/custom.plugins.bash ~/.bash_it/plugins/

# dotfiles
. ~/dotfiles/dotfiles
for file in ${DOT_FILES[@]}
do
    ln -s ~/dotfiles/$file ~/$file
done

source ~/.bashrc

echo ""
echo "Open a new shell/tab/terminal"

