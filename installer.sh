# install Git
sudo port install git-core +svn +doc +bash_completion +gitweb

# Install zShell
sh makesymlinks.sh

# Install homebrew
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

# Install RVM
\curl -L https://get.rvm.io | bash -s stable
rvm install 1.9.3

# Install rails
gem install rails -v 3.2.13

# Install node version manager

# Install youtube-dl
sudo curl https://yt-dl.org/downloads/2013.09.24.2/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+x /usr/local/bin/youtube-dl

# Install ImageMagick
brew install pkgconfig
brew install imagemagick

# install NVM
git clone git://github.com/creationix/nvm.git ~/.nvm
source ~/.nvm/nvm.sh
echo "source ~/.nvm/nvm.sh" >> ~/.bashrc
nvm install v0.8.5
nvm alias default v0.8.5

echo "[[ -s ~/.bashrc ]] && source ~/.bashrc" >>