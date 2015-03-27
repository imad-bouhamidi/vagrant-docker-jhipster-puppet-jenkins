# adding your SSH public key to the Docker container
#echo "===== adding ssh public key to the Docker container ====="
#cat ~/.ssh/id_rsa.pub | ssh -o StrictHostKeyChecking=no -p 4022 jhipster@localhost 'mkdir ~/.ssh && cat >> ~/.ssh/authorized_keys'