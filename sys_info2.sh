  GNU nano 4.8                                                                                                     sys_info2.sh                                                                                                     Modified  
#!/bin/bash

# create new directory
mkdir ~/research> /dev/null

# Prints the system title
echo "A Quick System Audit Script" >  ~/research/sys_info.txt

# Prints the system current date and time when the scripts run
date >> ~/research/sys_info.txt

# insert a blank line
echo "" >> ~/research/sys_info.txt

# This section provides the machine information
echo "Machine Type Info:" >> ~/research/sys_info.txt
echo $MACHTYPE >> ~/research/sys_info.txt
echo -e "Uname info: $(uname -a) \n" >> ~/research/sys_info.txt

# This command provides the information for the IP address and the host name
echo -e "IP Info: $(ip addr | grep inet | tail -2 | head -1) \n" >> ~/research/sys_info.txt
echo "Hostname: $(hostname -s) " >> ~/research/sys_info.txt

# this section of the scripts looks for a specific type of files
echo -e "\nExecutable Files:" >>  ~/research/sys_info.txt
find / -type f \( -perm -u=x -o -perm -g=x -o -perm -o=x \) >> ~/research/sys_info.txt

# This section looks for the top 10 processes
echo -e "\nTop 10 Processes" >> ~/research/sys_info.txt
ps aux -m | head -11 | awk {'print $1, $2, $3, $4, $11'}  >> ~/research/sys_info.txt

