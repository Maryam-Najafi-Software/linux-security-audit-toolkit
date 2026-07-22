# Linux Security Audit Toolkit

A Bash-based Linux security auditing toolkit designed to analyze a Linux system from a security perspective.

## Project Purpose

This project does not only collect system information. It performs security checks to identify possible risks, misconfigurations, and areas that may require attention.

The goal of this project is to demonstrate Linux security auditing skills using Bash scripting.

## Features

- SUID file scanning
- Dangerous file and directory permission checking
- Active services analysis
- Cron job auditing
- User, group, and sudo privilege analysis

## Project Structure

```
linux-security-audit-toolkit/

├── README.md
├── run.sh
├── suid_scan.sh
├── permissions.sh
├── services.sh
├── cron_jobs.sh
└── users_groups.sh
```

## Script Description

### run.sh
Runs all security audit scripts in sequence.

### suid_scan.sh
Searches for files with SUID permissions that may introduce security risks.

### permissions.sh
Checks files and directories with potentially dangerous permissions.

### services.sh
Displays active services running on the system.

### cron_jobs.sh
Checks scheduled Cron jobs for possible security issues.

### users_groups.sh
Analyzes users, groups, and sudo privileges.

## Usage

Make scripts executable:

```bash
chmod +x *.sh
```

Run the security audit toolkit:

```bash
./run.sh
```

## Security Checks

This toolkit performs basic Linux security reviews including:

- Privileged file detection
- Permission analysis
- Service enumeration
- Scheduled task inspection
- User privilege review

## Security Notice

This tool is created for educational purposes and authorized security auditing only.

Do not use this toolkit on systems without proper permission.

## Author

Created by Maryam Najafi

Linux Security Learning Project

## License

This project is intended for educational and learning purposes.
