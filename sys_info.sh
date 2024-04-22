#!/bin/bash

# Prints the script title.
echo "A Quick System Audit Script"

# Prints the systems current date and time when script is run.
date
echo ""

# Prints the information of the machine.
echo "Machine Tpye Info:"
echo $MACHTYPE
echo -e "Uname info: $(uname -a) \n"

# This part of the scripts provides the information of the IP address and the host name.

echo -e "IP Info: $(ip addr show eth0 | head -n 3 | tail -n 1) \n"
echo "Hostname: $(hostname -s) "

# This provides the DNS information.
echo "DNS Info: "
cat /etc/resolv.conf

# This provides the Memory information.
echo "Memory Info: "
free

# This provides the CPU information.
echo -e "\nCPU Info: "
lscpu | grep CPU

# This provides the Disk Usage Information.
echo -e "\nDisk Usage: "
df -H | head -2

# This command showed the current logged-in users
echo -e "\nWho is logged in: \n $(who -a) \n"
