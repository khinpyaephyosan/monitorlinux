#KhinPyaePhyoSan
#for monitoring report
#!/bin/bash

if ping -c 1 google.com &> /dev/null; then echo "Internet: connected"; else echo "Internet: disconnected"; fi

#echo "Operation System: $(awk -F "PRETTY_NAME=" '{print $2}' /etc/os-release | tr -d '\n"')"
echo "IP Address: $(hostname -I)"
echo "Kernetl Version: $(uname -r)"

echo "CPU Usage(user + system): $(top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}')"
echo "LoadAverage: $(top -n 1 -b | grep "load average:" | awk '{print $12 $13 $14}')"

echo "Memory Usage: "
echo "$(free -m)"

echo "Disk Usage: "
echo "$(df -Ph | grep -vE '^Filesystem|tmpfs|cdrom|overlay|shm')"




