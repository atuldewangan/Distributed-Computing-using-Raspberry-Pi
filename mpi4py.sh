

# download mpi4py
wget https://bitbucket.org/mpi4py/mpi4py/downloads/mpi4py-2.0.0.tar.gz

#unzip the file
sudo tar -zxf mpi4py-2.0.0.tar.gz

# go to the directory
cd mpi4py-2.0.0

# install python-dev package
sudo aptitude install python-dev

# run the setup
python setup.py build
sudo python setup.py install

# Set the python path
export PYTHONPATH=/home/pi/mpi4py-2.0.0

# Test that MPI works on your device
mpiexec -n 5 python demo/helloworld.py
