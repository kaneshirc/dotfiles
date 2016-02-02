~/.bash_it/uninstall.sh

rm ~/.bash_it/aliases/custom.aliases.bash
rm ~/.bash_it/completion/custom.completion.bash
rm ~/.bash_it/plugins/custom.plugins.bash

# dotfiles
. ~/dotfiles/dotfiles
for file in ${DOT_FILES[@]}
do
    rm ~/$file
done

rm -rf ~/.bash_it

