########################################################################
# Start shell script to set up basic/trival aspects of  environment
########################################################################

# Colors to use
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
NC="\033[0m"

echo -e "${GREEN}------------------------${NC}"
echo -e "${GREEN}Started Provisioning${NC}"
echo -e "${GREEN}------------------------${NC}"

echo -e "${YELLOW}------ Initiating Start Script ------${NC}"

echo -e "${YELLOW}------ Update and upgrade package list ------${NC}"
### Update and upgrade all packages
sudo apt-get update
sudo apt-get -y upgrade

echo -e "${YELLOW}------ Completed Start Script ------${NC}"
