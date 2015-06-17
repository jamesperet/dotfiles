
echo "Installing basic dependencies"

# install Git
echo "Installing git"
sudo port install git-core +svn +doc +bash_completion +gitweb

# Install zShell
echo "Installing zShell"
sh makesymlinks.sh

# Install homebrew
echo "Installing homebrew"
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

# Install Cask
echo "Installing brew cask"
brew tap phinze/cask
brew install brew-cask

# Install RVM
echo "Installing RVM - Ruby Version Manager"
\curl -L https://get.rvm.io | bash -s stable

# Install Node
echo "Installing node.js"
brew cask install --caskroom="/opt/homebrew-cask/Caskroom" node

# install NVM
echo "Installing NVM - Node Version Manager"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash

# ----------------------------

echo "Installing brew cask apps"
brewCaskApps=(atom dropbox google-chrome firefox iterm2 evernote rescuetime transmit dash postgres mou monodraw sketch-toolbox unity unity-web-player bfxr sonic-pi xact slack skype vlc transmission sitesucker the-unarchiver appcleaner hyperswitch)

brew cask install ${brewCaskApps[@]}

# Install youtube-dl
echo "Installing youtube-dl"
sudo curl https://yt-dl.org/downloads/2013.09.24.2/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+x /usr/local/bin/youtube-dl

# Install ImageMagick
echo "Installing ImageMagik"
brew install pkgconfig
brew install imagemagick

# tmux
echo "Installing tmux and teamocil"
brew install tmux
gem install teamocil
mkdir $HOME/.teamocil
cp teamocil/avalanche.yml $HOME/.teamocil/avalanche.yml

echo ""
echo ""
echo "ALL DONE"
echo ""
echo ""

echo "To Do's"
echo "- Confiture tmux: https://gist.github.com/simme/1297707"
echo ""
echo "Now install:"
echo "- Adobe CS6 (Photoshop, Illustrator, InDesign, After Effects)"
echo "- iWork (Pages, Numbers, Keynote)"
echo ""
echo ""
