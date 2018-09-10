# raspberryOpenCV

With a fresh install of Noobs...

```cd ~```

```sudo apt-get update && apt-get upgrade
sudo apt-get install git
git clone https://github.com/sunsetmountain/raspberryOpenCV```

```cd raspberryOpenCV
chmod +x initialsoftware.sh```

Open your /etc/dphys-swapfile (sudo nano /etc/dphys-swapfile) and then edit the CONF_SWAPSIZE variable:

CONF_SWAPSIZE=1024

Run the installation script

```./initialsoftware.sh```



Open your  /etc/dphys-swapfile and then edit the put the CONF_SWAPSIZE variable back to the original value:

```CONF_SWAPSIZE=100```
