cd ~
git clone --recursive https://github.com/wdtch/dotfiles .dotfiles
ln -s ~/.dotfiles/.zshrc ~/.zshrc

if [ "$(uname)" == 'Darwin' ]; then
  OS='Mac'
  echo "Create Symbolic Link of the setting folder Sublime Text 3."
  ln -s ./.dotfiles/Sublime\ Text\ 3 ~/Library/Application\ Support/Sublime\ Text\ 3
  echo "Install Homebrew."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  OS='Linux'
  echo "Create Symbolic Link of the setting folder Sublime Text 3."
  ln -s ./.dotfiles/Sublime\ Text\ 3 ~/.config/sublime-text-3
# elif [ "$(expr substr $(uname -s) 1 10)" == 'MINGW32_NT' ]; then
  # OS='Cygwin'
else
  echo "Your platform ($(uname -a)) is not supported."
  exit 1
fi