# Linux Security Audit Toolkit

A Bash-based Linux security auditing toolkit.

## Project Purpose

This project analyzes a Linux system from a security perspective.
It does not only collect information, but also checks for possible security risks.

## Features

- SUID file scanning
- Dangerous permissions checking
- Active services analysis
- Cron job auditing
- User, group, and sudo privilege checking

## Project Files

- README.md
- run.sh
- suid_scan.sh
- permissions.sh
- services.sh
- cron_jobs.sh
- users_groups.sh

## Script Description

### run.sh
Runs all security audit scripts.

### suid_scan.sh
Finds files with SUID permissions.

### permissions.sh
Checks dangerous file and directory permissions.

### services.sh
Shows active services.

### cron_jobs.sh
Checks cron jobs.

### users_groups.sh
Checks users, groups, and sudo access.

## Usage

Make scripts executable:

```bash
chmod +x *.sh
