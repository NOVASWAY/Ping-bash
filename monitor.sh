#!/bin/bash

CPU_THRESHOLD=80
MEMORY_THRESHOLD=80
DISK_THRESHOLD=80

send_alert() {
    echo "$(tput setaf 1) ALERT: usage exceeded threshold! Current value: $2% $(tput sgr0)"
}

# Monitor CPU usage
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
cpu_usage=${cpu_usage%.*}
echo "Current CPU Usage: $cpu_usage%"

if  ((cpu_usage >= CPU_THRESHOLD)); then
    send_alert "CPU" "$cpu_usage"
fi

# Monitor Memory usage
memory_usage=$(free | awk  '/Mem/ {printf("%3.if", ($3/$2) * 100.0)}')
echo "Current Memory Usage: $memory_usage%"
memory_usage=${memory_usage%.*}
if  ((memory_usage >= MEMORY_THRESHOLD)); then
    send_alert "Memory" "$memory_usage"
fi
