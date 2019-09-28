sudo apt-get update
sudo apt-get install -y \
	git \
        nano \
        apt-transport-https \
        ca-certificates \
        curl \
        gnupg-agent \
        software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get install docker-ce docker-ce-cli containerd.io

sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

git clone git@github.com:dantuluri/tmux-config.git
cd tmux-config
./install.sh
cd ..

curl https://getcroc.schollz.com | bash

echo "SSH KEY IS HERE"
cat ~/.ssh/
ssh-keygen -t rsa -b 4096 -C "server@sdan.cc"
