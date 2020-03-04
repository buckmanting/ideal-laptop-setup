/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
// install all other tools, following tutorials
read -p 'GitHub email: ' emailvar
ssh-keygen -t rsa -b 4096 -C $emailvar
