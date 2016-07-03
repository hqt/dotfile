# <img src="imgs/dotfile.png" width="250"/>
This is my script for setting up development environment on macOS new machine. This script includes copying all dotfiles to root directory and installing all necessary softwares, packages, plugins ... 

This is suitable for whom programs in Anroid, ruby, python and especially for vim user.

# <img src="imgs/screenshot.png" width="950"/>

## Installation Steps
1. run `brew.sh`.
2. Add solarize theme and set Meslo font for terminal.
3. Add solarize theme and set Meslo font for iTerm.

## Here is some plugins for easier to manage software package:
- <a href="http://brew.sh/">Homebrew</a>: software package management system that simplifies the installation software on MacOS. 
- <a href="https://caskroom.github.io/">Homebrew cask</a>: Homebrew for GUI, supporting install all GUI apps such as Chrome, Skype ... automatically.
- <a href="https://www.npmjs.com/package/nvm">NVM</a>: Node Version Manager. Control multi versions of node in same system. 
- <a href="https://www.npmjs.com/">NPM</a>: Node Plugin Manager. Control all node plugins globally. 
- <a href="https://rvm.io/">RVM</a>:Ruby Version Manager. Control multi versions of ruby in same system. 

## Vim with Tmux configuration:
This system configs for using iTerm + Tmux + Tmuxinator + Vim seemlessly. We can:
- Using tmux and tmuxinator. Key binding for tmux is `Control + A`
- Switching between Tmux panel and vim panel seemlessly. (Using `Control + H` `Control + L` `Control + J` `Control + K` for left, right, up and down respectively)
- Concise hotkey for splitting window using `Control + \` or `Control + -`.
- `Control + Z` back and forth for open/close temporary console on vim.
- Vim and NeoVim is compiled with Python support.

## Vim configuration:
- Using Vundle for vim plugin management.
- Leader key is `;`. We don't need to move fingers out of home row keyboard. 
- Using `Nerdtree` for browsing file. Pressing `;ns` or `;tns` for keeping nerdtree across all vim tabs.
- Searching files using combination of `CtrlP` and `Silver Searcher - ag`.
- Easier for navigating code repository using bookmark, ctags or go around with motion.
- Supporting checking syntax, autocompletion, auto close brackets ...   

Getting `.vimrc` for more hotkey reference.

## Reference
- <a href="http://sourabhbajaj.com/mac-setup/">Full guide for set up development environment for new mac</a>
- <a href="https://dotfiles.github.io/">Vim dotfile collections </a>
- <a href="https://github.com/mathiasbynens/dotfiles">Dotfile collection repository</a>

### Hope you enjoy :)
