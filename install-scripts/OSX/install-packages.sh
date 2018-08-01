#==============
# Install all the packages
#==============
echo -n "Install all base packages (Y/n) => "; read answer
if [[ $answer != "n" ]] && [[ $answer != "N" ]] ; then
    sudo chown -R $(whoami):admin /usr/local
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew doctor
    brew update

    # So we use all of the packages we are about to install
    echo "export PATH='/usr/local/bin:$PATH'\n" >> ~/.bashrc
    source ~/.bashrc

    # ===
    # The regular brew installable packages
    # ===
    brew install zsh
    brew install vim --with-lua
    brew install tig
    brew install aspell
    brew install tmux
    brew install the_silver_searcher
    brew install zsh-syntax-highlighting

    # ===
    # Get Ctags properly setup
    # Brew install and do away with the busted default version of ctags
    # ===
    brew install ctags
fi

echo -n "Install GO related tools? (y/N) => "; read go
if [[ $go = "y" ]] || [[ $go = "Y" ]] ; then
    brew install go --cross-compile-common
    # go get -u github.com/golang/lint/golint
fi
