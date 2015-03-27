# script to resolve SSH connection problem
# Set up sudo
echo "==== check for ubuntu update ===="
sudo apt-get update
echo "==== Set up sudo ===="
echo %vagrant ALL=NOPASSWD:ALL > /etc/sudoers.d/vagrant
chmod 0440 /etc/sudoers.d/vagrant

# Setup sudo to allow no-password sudo for "sudo"
usermod -a -G sudo vagrant

# setup ssh passphrase to authenticate to vagrant VM from cmd prompt via "vagrant ssh" using passphrase "vagrant"
echo "==== Adding ssh passphrase ===="

#ssh-keygen -b 4096 -t rsa -f ~/.ssh/id_rsa -P "vagrant"
ssh-keygen -b 4096 -t rsa -f ~/.ssh/id_rsa -N ''