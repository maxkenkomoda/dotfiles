#!/bin/zsh

#----------------------------------------
# Create symbolic files in home directory
#----------------------------------------
cd $HOME
echo "Current directory is ${CURRENT_DIR}"
echo "Create Symbolic links"
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/dotfiles/zsh/.zshrc.local ~/.zshrc.local
ln -s ~/dotfiles/vim/dein ~/dein
ln -s ~/dotfiles/vim/.vimrc ~/.vimrc
ln -s ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf

#----------------------------------------
# install
#----------------------------------------
echo "Installing homebrew ..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew doctor
echo 'Complete installing Homebrew'

echo "Installing Git ..."
brew install git
brew install gh
git config --global core.editor "vim"
echo 'Complete installing Git'

echo "Installing tmux ..."
brew install tmux
brew install reattach-to-user-namespace
echo 'Complete installing tmux'

echo "Installing nvm ..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
echo 'Complete installing nvm'

echo "Installing rbenv ..."
brew install rbenv
echo 'Complete installing rbenv'

echo 'Installing dein.vim'
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.vim/bundles
echo 'Complete installing dein.vim'

echo 'Installing git-prompt ...'
curl -o git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
curl -o git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
curl -o _git https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
echo 'Complete installing git-prompt'

echo 'Installing ffmpeg ...'
brew install ffmpeg
echo 'Complete installing ffmpeg'

#----------------------------------------
# install vim
#----------------------------------------
echo 'Installing plugin for vim...'

#cask fonts
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

# power line fonts
git clone https://github.com/powerline/fonts.git --depth=1
./install.sh
cd ..
rm -rf fonts
cd $HOME

echo 'Complete installing plugin for vim'


echo 'Complete Installing !!!!!!!!!!!'
