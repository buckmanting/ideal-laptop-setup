/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
# install all other tools, following tutorials

## install git
brew install git

## install zsh
brew install zsh
### set zsh as your default shell, requires password
chsh -s /bin/zsh
sudo port install zsh zsh-completions # <- doesn't work 🤷‍♂️

### install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
### set zsh as default
chsh -s $(which zsh)
### apply changes
source ~/.zshrc


## install nvm
brew install nvm
mkdir ~/.nvm
echo "export NVM_DIR=~/.nvm" >> ~/.zshrc
echo "source $(brew --prefix nvm)/nvm.sh" >> ~/.zshrc

source ~/.zshrc
echo $NVM_DIR

#### compaudit | xargs chmod g-w <-- fixed my zsh insecure issue

## install iterm
brew cask install iTerm2

### install common global npm packages
npm i -g @angular/cli pa11y

### install Firefox Developer Edition
brew cask install homebrew/cask-versions/firefoxdeveloperedition
### install Edge
brew cask install microsoft-edge

### configure git
git config --global alias.co checkout
git config --global alias.s status

## setup ssh keys
### generate
read -p 'GitHub email: ' emailvar
ssh-keygen -t rsa -b 4096 -C $emailvar

### add
ssh-add -K ~/.ssh/id_rsa

### copy to clipboard
pbcopy < ~/.ssh/id_rsa.pub
echo "the key is now on your clipboad. add it to github here https://github.com/settings/ssh/new"
