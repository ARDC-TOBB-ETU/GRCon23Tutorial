#!/bin/bash

wget -O Miniforge3.sh "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
bash Miniforge3.sh -b -p "${HOME}/conda"
source "${HOME}/conda/etc/profile.d/conda.sh"

conda config --append channels conda-forge

conda create --name GRCon23 --file requirements.txt

# cd /etc/modprobe.d/
# sudo gedit blacklist-rtl.conf
# append: blacklist dvb_usb_rtl28xxu

# echo "blacklist dvb_usb_rtl28xxu" >> /etc/modprobe.d/blacklist.conf

# update-initramfs -u

# sudo apt-get install -y librtlsdr-dev

