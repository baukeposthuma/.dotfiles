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
brew install yarn
```


## Applications

```sh
# App Store
Nord VPN
Spark Mail
```

```sh
# General
brew cask install google-chrome
brew cask install slack
brew cask install 1password
brew cask install keybase
brew cask install spotify
brew cask install dropbox
brew cask install gitkraken
brew cask install boom-3d
brew cask install telegram
brew cask install alfred
brew cask install notion
```

```sh
# Development
brew cask install docker
brew cask install insomnia
brew cask install postman 
brew cask install postico # postgresql gui
brew cask install sequel-pro # mysql gui
brew cask install robo-3t # mongodb gui
brew cask install sourcetree # git gui
brew cask install zeplin
```

## Iterm
```sh
brew cask install iterm2
```

Open Iterm > Preferences

Enable: Make Iterm default terminal

Disabled dimmed inactive panes:  
Colors > Cursor: #d22dde

Text > Blinking cursor: Enabled

Profiles > Window:  
Settings for new windows: set `columns` to `120` and `rows` to `26` for a more pleasant window.

Transparency: 15%
Blur: 75%


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
Follow installation instructions on: https://nodejs.org/

Install nvm: https://github.com/creationix/nvm/

# vscode
```sh
brew cask install visual-studio-code
```

... vscode settings


## New machine ssh key

```
ssh-keygen -N "" -t rsa -b 4096 -C "EMAIL_ADDRESS" -f $HOME/.ssh/id_rsa
```
