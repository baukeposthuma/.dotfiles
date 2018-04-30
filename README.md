## Mac defaults
Look into `./macos.sh` and run each line one by one. You might want to follow the below commands first.

## Brew

install brew and brew cask

```sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap caskroom/cask
```

```sh
brew install bash
brew install bash-completion2
brew install liquidprompt

# Switch to bash 
echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
chsh -s /usr/local/bin/bash;

brew install z

brew install git
brew install hub

brew install yarn

brew install imagemagick --with-webp
brew install libvpx
brew install ffmpeg

brew install watchman # for react native
```


## Applications

Install xcode via the app store.

```sh
# General
brew cask install google-chrome
brew cask install slack
brew cask install 1password
brew cask install keybase
brew cask install spotify
brew cask install transmission
```

```sh
# utils
brew cask install gyazo # quick capture and upload gifs and screenshots
brew cask install licecap # create longer screencapture gifs
brew cask install imageoptim # minify images
```

```sh
# Development
brew cask install google-chrome-canary
brew cask install docker
brew cask install android-studio
brew cask install insomnia
brew cask install postman 
brew cask install postico # postgresql gui
brew cask install sequel-pro # mysql gui
brew cask install robo-3t # mongodb gui
brew cask install sourcetree # git gui
```

## Iterm
```sh
brew cask install iterm2
```

Open Iterm > Preferences

Enable: Make Iterm default terminal

Disabled dimmed inactive panes:  
Appearance > Dimmming: Disable "Dim inactive panes"

Profiles > Window:  
Settings for new windows: set `columns` to `105` for a more pleasant window.

Profiles > Keys:  
Add word skip (`←⌥`, `→⌥`) and end of line skip (`←⌘`, `→⌘`)  

1. Set left `←⌥` to `Esc+`
2. change `←⌥` to `send escape sequence` `f`
3. change `→⌥` to `send escape sequence` `f` 
4. add `←⌘` to `send hex code` `0x01` 
5. add `→⌘` to `send hex code` `0x05` 

```sh
# Don’t display the annoying prompt when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false
```

# Node
```sh
brew install nvm
```

Add the following to your .bash_profile

```sh
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
```

Install the latest stable or LTS of node

```sh
nvm install stable
nvm install lts/*

# set lts as the default
nvm alias default lts/*
```

check installed versions of node

```sh
nvm ls
```

# vscode
```sh
brew cask install visual-studio-code
```

... vscode settings


## New machine ssh key

```
ssh-keygen -N "" -t rsa -b 4096 -C "EMAIL_ADDRESS" -f $HOME/.ssh/id_rsa
```
