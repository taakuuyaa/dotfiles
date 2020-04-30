git submodule update --init --recursive

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
 ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

echo "Create dotfile links."
ln -sf $DOTDIR/zsh/zprezto $HOME/.zprezto
ln -sf $DOTDIR/zsh/.zshrc $HOME/.zshrc
ln -sf $DOTDIR/zsh/.zpreztorc $HOME/.zpreztorc
echo "Success"

# change shell
chsh -s $(which zsh)

source $DOTDIR/zsh/.zshrc
source $DOTDIR/zsh/.zpreztorc
