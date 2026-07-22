#!/bin/bash

GREEN="\e[32m"
BLUE="\e[34m"
RED="\e[31m"
NC="\e[0m"

echo -e "${BLUE}=========================================${NC}"
echo -e "${GREEN}    FILE PERMISSION SECURITY CHECK${NC}"
echo -e "${BLUE}=========================================${NC}"

echo ""
echo -e "${GREEN}[+] Files with 777 permissions:${NC}"
find / -type f -perm 0777 2>/dev/null

echo ""
echo -e "${GREEN}[+] Directories with 777 permissions:${NC}"
find / -type d -perm 0777 2>/dev/null

echo ""
echo -e "${GREEN}[+] World Writable Files:${NC}"
find / -type f -perm -0002 2>/dev/null | head -20

echo ""
echo -e "${BLUE}Permission Scan Completed.${NC}"
