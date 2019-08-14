########################################################################
# End shell script to allow space for ending the preovisionng and
# performing trivalal tasks like cleanup packages, env variables etc.
########################################################################

echo -e "${YELLOW}------ Initiating End Script ------${NC}"

echo -e "${YELLOW}------ Removing unrequired packages ------${NC}"
sudo apt-get autoremove

echo -e "${YELLOW}------ Completed End Script ------${NC}"

echo -e "${GREEN}------------------------${NC}"
echo -e "${GREEN}Completed Provisioning${NC}"
echo -e "${GREEN}------------------------${NC}"