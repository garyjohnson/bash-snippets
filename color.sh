#!/bin/bash

BLU='\033[0;34m'
RED='\033[0;31m'
GRN='\033[0;32m'
NC='\033[0m' # No Color

printf "${BLU}Performing a long running operation...${NC}"
sleep 1
printf "${GRN}OK!${NC}\n"

printf "${BLU}Performing another long running operation...${NC}"
sleep 1
printf "${RED}Failed!${NC}\n"
