/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
# install all other tools, following tutorials

## setup ssh keys
### generate
read -p 'GitHub email: ' emailvar
ssh-keygen -t rsa -b 4096 -C $emailvar

### add
ssh-add -K ~/.ssh/id_rsa

### copy to clipboard
pbcopy < ~/.ssh/id_rsa.pub
echo "the key is now on your clipboad. add it to github here https://github.com/settings/ssh/new"
