#!/bin/bash

GREEN="\e[32m"
BLUE="\e[34m"
RED="\e[31m"
NC="\e[0m"

echo -e "${BLUE}=========================================${NC}"
echo -e "${GREEN}        CRON JOB SECURITY CHECK${NC}"
echo -e "${BLUE}=========================================${NC}"

echo ""
echo -e "${GREEN}[+] System Crontab:${NC}"
cat /etc/crontab 2>/dev/null

echo ""
echo -e "${GREEN}[+] Cron Directories:${NC}"

ls -la /etc/cron* 2>/dev/null

echo ""
echo -e "${GREEN}[+] Current User Cron Jobs:${NC}"

crontab -l 2>/dev/null || echo "No user cron jobs found."

echo ""
echo -e "${BLUE}Cron Scan Completed.${NC}"
