#!/bin/bash

CPU_THRESHOLD=80
MEMORY_THRESHOLD=80
DISK_THRESHOLD=80

send_alert() {
    echo "$(tput setaf 1) ALERT: usage exceeded threshold! Current value: $2% $(tput sgr0)"
}

send_alert "CPU" 85 # Test value to test functionality.