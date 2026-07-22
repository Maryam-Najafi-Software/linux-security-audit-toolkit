#!/bin/bash

GREEN="\e[32m"
BLUE="\e[34m"
RED="\e[31m"
NC="\e[0m"

echo -e "${BLUE}=========================================${NC}"
echo -e "${GREEN}       SERVICE SECURITY CHECK${NC}"
echo -e "${BLUE}=========================================${NC}"

echo ""
echo -e "${GREEN}[+] Running Services:${NC}"
systemctl list-units --type=service --state=running --no-pager

echo ""
echo -e "${GREEN}[+] Enabled Services:${NC}"
systemctl list-unit-files --type=service --state=enabled --no-pager

echo ""
echo -e "${GREEN}[+] Listening Ports:${NC}"

ss -tuln

echo ""
echo -e "${BLUE}Service Scan Completed.${NC}"
