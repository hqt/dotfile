#!/usr/bin/env bash

# Install command-line tools using Homebrew.
# xcode-select --install

 sudo chown -R $(whoami) /usr/local

# install homebrew. uncomment this line on system that haven't installed brew yet
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile
brew tap caskroom/versions
brew tap caskroom/cask

# Make sure we’re using the latest Homebrew.
echo "update brew"
brew update

# Upgrade any already-installed formulae.
echo "upgrade all installed package"
brew upgrade --all


### RUBY SECTION ###
# Install ruby version manager
brew install rbenv
rbenv init

# manually install ruby
# see all available ruby versions
# rbenv install -list
# install ruby versions
# rbenv install <ruby_version>
# select ruby for local version, only for current user
# rbenv local <ruby_version>
# select ruby for global version, for all users
# rbenv global <ruby_version>
# list all available ruby version has installed rbenv can use
# rbenv versions
# add those to shell configuration file
# echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
# echo 'eval "$(rbenv init -)"' >> ~/.bash_profile #to enable shims and auto-complete
gem install bundler
gem install rails
rbenv rehash # tell rbenv to see all installed gem

### PYTHON SECTION ###
# install python version manager
brew install pyenv
# view all available python versions
# pyenv install --list
# select one version and install
# pyenv install <python_version>
# view all local pythons
# pyenv versions
# select python for local version. only for current user
# pyenv local <python_version>
# select python for global version, for all users
# pyenv global <python_version>
pyenv rehash # tell pyenv to see new installed packages or python version

# install Java
echo "Install Java ..."
brew install Caskroom/cask/java

# install Go
echo "Install Go ..."
brew install go

# search tool fzf
brew install fzf
# install shell extensions
/usr/local/opt/fzf/install

echo "install another useful utilities ..."
# Install GNU core utilities (those that come with macOS are outdated).

# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
echo "install coreutils"
brew install coreutils
ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2
brew install ctags
gem install gem-ctags  # automatically index ctags for all gems
gem ctags

# switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# install `wget` with iri support.
brew install wget --with-iri

# Install more recent versions of some macOS tools.
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
echo "install CTF - security research tools"
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xz

# Install other useful binaries.
brew install ack
brew install dark-mode

#brew install exiv2
brew install git
brew install git-lfs
brew install scmpuff
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install speedtest_cli
brew install ssh-copy-id
brew install testssl
brew install tree
brew install vbindiff
brew install webkit2png
brew install zopfli

# personal tools for work - hqthao
echo "install hqthao working utilities ..."

# Node
#brew install node
# install NVM - Node version Manager
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash
nvm install stable        # install most stable node version
nvm use stable
nvm alias default stable  # set the installed stable version as the default
npm install -g nodemon
npm install -g express
npm install -g coffee-script
npm install -g grunt-cli

# android
brew install gradle
brew install android-sdk
brew install dex2jar
brew install apktool
brew cask install jd-gui

# Zsh
# install zsh shell
brew install zsh
brew install zsh-completions
# install oh-my-zsh shell
#git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install battery command plugin. (battery -t) so we can apply on tmux nicely
brew tap Goles/battery
brew install battery

### tmux section ###
brew install tmux
brew install reattach-to-user-namespace --wrap-pbcopy-pbpaste && brew link reattach-to-user-namespace
gem install tmuxinator
# setup tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source ~/.tmux.conf
# install tmux plugin manually by pressing prefix + I

# vim
brew install ag
brew install vim --with-python --with-override-system-vi
brew install macvim
brew linkapps macvim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# setup font for vim
git clone https://github.com/powerline/fonts.git $HOME/Documents/powerline &&  \
                  cd $HOME/Documents/powerline && \
                  ./install.sh && \
                  rm -r -f $HOME/Documents/powerline
cd $HOME/Documents
# setup vim plugins
git clone https://github.com/hqt/dotfile.git $HOME/Documents/dotfile && \
                  cp $HOME/Documents/dotfile/.vimrc ~/ && \
                  cp $HOME/Documents/dotfile/.tmux.conf ~/ && \
                  cp $HOME/Documents/dotfile/.ideavimrc ~/ && \
                  cp $HOME/Documents/dotfile/.zshrc ~/ && \
                  cp -r $HOME/Documents/dotfile/plugin ~/.vim && \
                  rm -r -f $HOME/Documents/dotfile
vim +PluginInstall

# setup Powerline font manually for iterm and bash
# https://github.com/altercation/solarize://github.com/altercation/solarized

# set up neovim
brew install neovim/neovim/neovim
mkdir $HOME/.config
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim
# install python neovim module
pip2 install --user neovim
pip3 install --user neovim

# Database
brew install mongodb
brew install redis
brew install nginx

# Mac quicklook
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install qlprettypatch
brew cask install quicklook-csv
brew cask install betterzipql
brew cask install webpquicklook
brew cask install suspicious-package

# install GUI Application
# brew cask install iterm2
# brew cask install google-chrome
# brew cask install karabiner
# brew cask install flux
# brew cask install slack
# brew cask install postman
# brew cask install memoryanalyzer
# brew cask install sourcetree
# brew cask install android-file-transfer
# brew cask install sublime-text
# brew cask install atom
# brew cask install the-unarchiver
# brew cask install vlc
# brew cask install teamviewer
# brew cask install utorrent
# brew cask install paintbrush
# brew cask install firefox
# brew cask install skype

# brew cask install alfred

# cleanup all installation cache
brew cask cleanup

# change default shell
chsh -s /bin/zsh

# Remove outdated versions from the cellar.
#brew cleanup
