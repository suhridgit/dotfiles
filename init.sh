#/bin/sh
# DETERMINE OS
case $( uname -s ) in
Linux)
    OS="LINUX"
    ;;
Darwin)
    OS="MAC"
    ;;
esac

# REMOVE OLD DOTFILES
echo "Removed old dotfiles"
rm -rf $HOME/.vim
rm -f $HOME/.vimrc
rm -rf $HOME/.i3
rm -f $HOME/.bash_profile
rm -f $HOME/.bashrc
rm -f $HOME/.tmux.conf

mkdir $HOME/.i3

sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# SYMLINKS
echo "Created symlinks for the dotfiles"
ln -fs $PWD/vim $HOME/.vim
ln -fs $PWD/zshrc $HOME/.zshrc
ln -fs $PWD/vimrc $HOME/.vimrc
ln -fs $PWD/bash_profile $HOME/.bash_profile
ln -fs $PWD/bashrc $HOME/.bashrc
ln -fs $PWD/tmux.conf $HOME/.tmux.conf
ln -fs $PWD/inputrc $HOME/.inputrc
ln -fs $PWD/i3/config $HOME/.i3/config
ln -fs $PWD/i3/status_config $HOME/.i3/status_config

# FONTS
if [ $OS == "LINUX" ]; then
    echo "Update Fonts cache!"
    rm -rf $HOME/.fonts
    rm -f $HOME/.fonts.conf
    ln -fs $PWD/fonts   $HOME/.fonts
    ln -fs $PWD/fonts.conf   $HOME/.fonts.conf
    sudo fc-cache -fv
fi

echo "Install vim plugins"
git submodule init
git submodule update

echo "Done! :)"
