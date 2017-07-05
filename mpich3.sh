
# update the system
sudo apt-get update

# update packages but wait for it complete if upgrading for the first time,
# there is possibility that your OS would corrupt if not done completely
sudo apt-get dist-upgrade

# create the folder for mpich3
sudo mkdir mpich3
cd ~/mpich3

# download the version 3.2 of mpich
sudo wget http://www.mpich.org/static/downloads/3.2/mpich-3.2.tar.gz

# unzip it
sudo tar xfz mpich-3.2.tar.gz

# create folders for mpi
sudo mkdir /home/rpimpi/
sudo mkdir /home/rpimpi/mpi-install
mkdir /home/pi/mpi-build

# install gfortran
sudo apt-get install gfortran

# configure and isntall mpich
sudo /home/pi/mpich3/mpich-3.2/configure -prefix=/home/rpimpi/mpi-install
sudo make
sudo make install

# edit the bash script using nano editor that runs everytime the Pi starts
cd ..
nano .bashrc

# Add the following to the end of the file
# PATH=$PATH:/home/rpimpi/mpi-install/bin
# to save the details press "CTRL + ^x" -> using CTRL 6 and x
# press "y" and hit enter to leave.

# Reboot the Pi
sudo reboot

# Test that MPI works
mpiexec -n 1 hostname
