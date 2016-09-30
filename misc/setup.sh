# APT2 install and requirements:
# The following steps will ensure the apt2 will run.
# It does not ensure that all of the tools are installed,
# just that all of the minimum requires for apt2 to run are satisfied.

apt-get update
apt-get upgrade
apt-get install git python-pip
pip install python-mmap
pip install pysmb
pip install yattag
pip install scapy
pip install ftputil
pip install msgpack-python

git clone https://github.com/MooseDojo/apt2.git
cd apt2
./apt2.py -h
./apt2.py -b

echo "At this point look for any line such as:"
echo "[!] Module ‘xxxxxxxx’ disabled. Dependency required: '['xxxxxxx']'"
echo "and make sure you install and missing tools as needed"