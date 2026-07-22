#!/bin/bash

GREEN="\e[32m"
BLUE="\e[34m"
RED="\e[31m"
NC="\e[0m"

clear

echo -e "${BLUE}"
echo "==============================================="
echo "      Linux Security Audit Toolkit v1.0"
echo "==============================================="
echo -e "${NC}"

echo ""
echo -e "${GREEN}[1/5] SUID Scan${NC}"
echo ""
./suid_scan.sh

echo ""
echo -e "${GREEN}[2/5] Permission Scan${NC}"
echo ""
./permissions.sh

echo ""
echo -e "${GREEN}[3/5] Service Scan${NC}"
echo ""
./services.sh

echo ""
echo -e "${GREEN}[4/5] Cron Job Scan${NC}"
echo ""
./cron_jobs.sh

echo ""
echo -e "${GREEN}[5/5] Users & Groups Scan${NC}"
echo ""
./users_groups.sh

echo ""
echo -e "${BLUE}===============================================${NC}"
echo -e "${GREEN} Linux Security Audit Completed Successfully!${NC}"
echo -e "${BLUE}===============================================${NC}"
