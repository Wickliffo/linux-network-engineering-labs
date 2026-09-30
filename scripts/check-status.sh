#!/bin/bash
echo "Auditing system state and network interface enp1s0..."
ip addr show enp1s0
ping -c 4 192.168.70.10
echo "Audit complete."
