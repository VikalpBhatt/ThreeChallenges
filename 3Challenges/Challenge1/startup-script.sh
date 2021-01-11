
#SSH to the newly created VM
gcloud compute ssh --project=vikalptrials --zone=europe-west1-c mycomputeeng1

#to go to root user and install docker and docker-compose needed for app
sudo su -

#update to latest libs & packages
apt-get update

#update certificates
apt-get install \
apt-transport-https \
ca-certificates \
curl \
gnupg-agent \
software-properties-common

#download and update docker
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

#download latest repo with stable image
add-apt-repository \
"deb [arch=amd64] https://download.docker.com/linux/debian \
$(lsb_release -cs) \
stable"

#install all the downloaded updates
apt-get update

#install docker CLI
apt-get install docker-ce docker-ce-cli containerd.io

#download and install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o 
/usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose