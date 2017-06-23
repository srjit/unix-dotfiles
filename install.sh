sudo apt-get install i3lock
sudo apt-get install dmenu
# install dropbox
dropbox start -i
sudo apt-get install zsh terminator feh
chsh -s $(which zsh)
sudo apt-get install acpi i3blocks
sudo apt-get install lxappearance gtk-chtheme qt4-qtconfig

#powerline fonts
# clone
git clone https://github.com/powerline/fonts.git
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts


sudo apt-get install python-pip
sudo apt-get install python3-pip ipython3

sudo apt-get install xclip

sudo pip3 install setuptools
sudo pip3 install bs4

# emacs python
sudo apt-get install pyflakes
sudo apt-get install python-rope


# tensorflow
sudo apt-get install libcupti-dev
## install nvidia cuda
https://developer.nvidia.com/cuda-downloads
