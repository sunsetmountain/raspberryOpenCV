# raspberryOpenCV

With a fresh install of Noobs...

cd ~

sudo apt-get update && apt-get upgrade
sudo apt-get install git
git clone https://github.com/sunsetmountain/raspberryOpenCV

cd raspberryOpenCV

chmod +x initialsoftware.sh

Open your /etc/dphys-swapfile (sudo nano /etc/dphys-swapfile) and then edit the CONF_SWAPSIZE  variable:

# set size to absolute value, leaving empty (default) then uses computed value
#   you most likely don't want this, unless you have an special disk situation
# CONF_SWAPSIZE=100
CONF_SWAPSIZE=1024

Run the installation script

./initialsoftware.sh
