#!/bin/bash

GREEN="\e[32m"
BLUE="\e[34m"
RED="\e[31m"
NC="\e[0m"

echo -e "${BLUE}=========================================${NC}"
echo -e "${GREEN}        SUID FILES SECURITY CHECK${NC}"
echo -e "${BLUE}=========================================${NC}"

echo ""
echo -e "${GREEN}[+] Searching for SUID files...${NC}"
echo ""

find / -perm -4000 2>/dev/null | while read file
do
    ls -lh "$file"
done

echo ""
echo -e "${GREEN}[+] Total SUID files:${NC}"

find / -perm -4000 2>/dev/null | wc -l

echo ""
echo -e "${BLUE}Scan Completed.${NC}"
