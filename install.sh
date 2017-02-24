#!/usr/bin/env bash

# Ask for the administrator password upfront
# and keep-alive: update existing `sudo` time stamp until script has finished
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "Installing xcode..."

read -p "Please install and run XCode first, Press [Enter] to continue"
xcode-select --install

echo "Installing homebrew..."

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew update
brew bundle
brew cleanup -f
brew cask cleanup

echo "Configuring postgres.."

brew services start postgres

echo "Configuring git..."

git config --global user.name "Stijn Meurkens"
git config --global user.email meurkens@gmail.com

echo "Configuring zsh as default shell..."

if ! grep -q "/usr/local/bin/zsh" /etc/shells; then
  echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells
fi
chsh -s /usr/local/bin/zsh

echo "Creating Code directory..."

mkdir ~/Code

echo "Installing rbenv-vars..."

git clone https://github.com/rbenv/rbenv-vars.git $(rbenv root)/plugins/rbenv-vars

echo "Configuring macOS settings..."

sh ./.macos

echo "Installing dotfiles..."

cd $HOME
for src in $(find -H "./" -maxdepth 2 -name '*.symlink' -not -path '*.git*')
do
  dst="$HOME/.$(basename "${src%.*}")"
  rm -rf "$dst"
  if [ -f "$src" -o -d "$src" -o -L "$src" ]
  then
    ln -s "$src" "$dst"
  fi
done

echo "Configuring vim..."

vim +PlugInstall +qa!

read -p "Press [Enter] after Dropbox file structure has loaded, otherwise quit using Ctrl-C..."

echo "Linking iTunes music..."

rm -rf ~/Music/iTunes
ln -s ~/Dropbox/Appdata/iTunes ~/Music/

echo "Linking further install instructions on Desktop"
ln -s "$PWD/install.txt" ~/Desktop

echo ""
echo "----------------------------------------------"
echo "  Automatic installation has been completed.  "
echo "     You should now reboot your computer.     "
echo "----------------------------------------------"
echo ""