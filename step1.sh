# Install all of the core software needed to make use of OpenCV
# Based off of https://www.pyimagesearch.com/2017/09/04/raspbian-stretch-install-opencv-3-python-on-your-raspberry-pi/

# Start at the beginning by going home.
cd ~

# Make sure everything is up-to-date and then install core packages
sudo apt-get update
sudo apt-get install -y build-essential cmake pkg-config
sudo apt-get install -y libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev
sudo apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install -y libxvidcore-dev libx264-dev
sudo apt-get install -y libgtk2.0-dev libgtk-3-dev
sudo apt-get install -y libatlas-base-dev gfortran
sudo apt-get install -y python2.7-dev python3-dev
sudo apt-get install -y python-pip
sudo pip install virtualenv virtualenvwrapper

# Download OpenCV source code
git clone https://github.com/opencv/opencv
git clone https://github.com/opencv/opencv_contrib

# Add startup commands to the end of .profile
echo -e "\n# virtualenv and virtualenvwrapper" >> ~/.profile
echo "export WORKON_HOME=$HOME/.virtualenvs" >> ~/.profile
echo "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2" >> ~/.profile
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.profile

# Refresh changes just made to the .profile
source ~/.profile

# Make a virtual environment
mkvirtualenv cv -p python2

# Install numpy
pip install numpy

# Compile and install OpenCV
cd ~/opencv/
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D INSTALL_PYTHON_EXAMPLES=ON \
    -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib/modules \
    -D BUILD_EXAMPLES=ON ..
