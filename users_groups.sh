#!/bin/bash

GREEN="\e[32m"
BLUE="\e[34m"
RED="\e[31m"
NC="\e[0m"

echo -e "${BLUE}=========================================${NC}"
echo -e "${GREEN}      USERS & GROUPS SECURITY CHECK${NC}"
echo -e "${BLUE}=========================================${NC}"

echo ""
echo -e "${GREEN}[+] Current User:${NC}"
whoami

echo ""
echo -e "${GREEN}[+] Logged In Users:${NC}"
who

echo ""
echo -e "${GREEN}[+] System Users:${NC}"
cut -d: -f1 /etc/passwd

echo ""
echo -e "${GREEN}[+] System Groups:${NC}"
cut -d: -f1 /etc/group

echo ""
echo -e "${GREEN}[+] Users with sudo privileges:${NC}"

getent group sudo || echo "No sudo group found."

echo ""
echo -e "${BLUE}User Scan Completed.${NC}"
