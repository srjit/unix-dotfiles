sudo apt-get install i3lock
sudo apt-get install dmenu
# install dropbox
dropbox start -i
sudo apt-get install zsh terminator feh
chsh -s $(which zsh)
sudo apt-get install acpi i3blocks
sudo apt-get install lxappearance gtk-chtheme qt4-qtconfig

# install light - screen
git clone git@github.com:haikarainen/light.git
cd light
sudo apt-get install help2man
make
sudo make install

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
http://www.nvidia.com/object/gpu-accelerated-applications-tensorflow-installation.html

# download cuda dnn from here  - IMPORTANT - check the version of cuda dnn shared object - it might
# be looking for 

#  cd folder/extracted/contents
#  sudo cp -P include/cudnn.h /usr/include
#  sudo cp -P lib64/libcudnn* /usr/lib/x86_64-linux-gnu/
#  sudo chmod a+r /usr/lib/x86_64-linux-gnu/libcudnn*


## vlc
sudo apt-get install vlc

