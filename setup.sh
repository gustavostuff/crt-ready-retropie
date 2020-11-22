cd /
echo "Changed working directory to /"
echo "********************************************************"

echo "Downloading crt-ready-retropie-config.tar.gz..."
sudo wget https://github.com/tavuntu/crt-ready-retropie/raw/main/crt-ready-retropie-config.tar.gz
echo "********************************************************"

echo "Decompressing crt-ready-retropie-config.tar.gz..."
echo "(ownership error is expected)"
sudo tar -zxf crt-ready-retropie-config.tar.gz
echo "********************************************************"

echo "Deleting crt-ready-retropie-config.tar.gz..."
sudo rm crt-ready-retropie-config.tar.gz
echo "********************************************************"

echo "Restoring directory and files ownership"
sudo chmod a+rw -R /opt/retropie/configs/ && sudo chmod a+rwx /opt/retropie/configs/all/*.sh
echo "********************************************************"

echo "Restarting system..."
sudo reboot
echo "********************************************************"
