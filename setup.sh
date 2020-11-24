#!/bin/bash

# Copyright 2020 Gustavo Lara

# Permission is hereby granted, free of charge, to any person obtaining a copy of this softwareand associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

function separator () {
  echo "******************************************************************"
}

cd /
echo "Changed working directory to /"


echo "Downloading crt-ready-retropie-config.tar.gz..."
sudo wget https://github.com/tavuntu/crt-ready-retropie/raw/main/crt-ready-retropie-config.tar.gz
separator

echo "Decompressing crt-ready-retropie-config.tar.gz..."
echo "(ownership error is expected)"
sudo tar -zxf crt-ready-retropie-config.tar.gz
separator

echo "Deleting crt-ready-retropie-config.tar.gz..."
sudo rm crt-ready-retropie-config.tar.gz
separator

echo "Restoring directory and files ownership..."
sudo chmod a+rw -R /opt/retropie/configs/ && sudo chmod a+rwx /opt/retropie/configs/all/*.sh
separator

if [ $1 == "snesdev" ]; then
  echo "Installing SNESDev-RPi driver..."
  separator

  cd ~
  git clone git://github.com/petrockblog/SNESDev-RPi.git
  cd SNESDev-RPi
  sudo make
  sudo make install
  sudo make installservice
  sudo modprobe uinput
fi

echo "Restarting system..."
sudo reboot
separator
