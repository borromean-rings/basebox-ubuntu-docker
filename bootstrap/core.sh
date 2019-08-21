########################################################################
# Core shell script to set up the box with all the critical/minimal
# requirements
########################################################################

echo -e "${YELLOW}------ Initiating Core Script ------${NC}"


### Install Docker CE engine
echo -e "${YELLOW}------ Install Docker ------${NC}"

## Based on the instructions provided at
## https://docs.docker.com/install/linux/docker-ce/ubuntu/

## Uninstall old versions if present (safeguard)
sudo apt-get remove docker docker-engine docker.io containerd runc

## Set up the repository

# Install packages to allow apt to use a repository over HTTPS
sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Verify that you now have the key
sudo apt-key fingerprint 0EBFCD88

# Add the stable repository
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

## Install it now

# Update package index
sudo apt-get update

# Install the latest version of Docker Engine - Community and containerd
sudo apt-get -y install docker-ce docker-ce-cli containerd.io

## Verify that Docker Engine - Community is installed correctly
sudo docker run hello-world

### Install Docker Compose
echo -e "${YELLOW}------ Install Docker Compose ------${NC}"

## cURL docker compose from Github
sudo curl -fsSL "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

## Apply executable permissions to the binary
sudo chmod +x /usr/local/bin/docker-compose

### Post-install steps: https://docs.docker.com/install/linux/linux-postinstall/

## Add user vagrant (the default user after login) to docker group
sudo usermod -aG docker vagrant

## Enable docker as a (systemd) service
sudo systemctl enable docker

echo -e "${YELLOW}------ Completed Core Script ------${NC}"
