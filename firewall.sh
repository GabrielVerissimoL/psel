#!/bin/bash

# Compila o firewall
gcc -o firewall firewall.c

# Inicia o firewall em background
sudo ./firewall &

# Aguarda a interface ser criada
sleep 1

# Configura a interface TUN
sudo ip addr add 10.0.0.1/24 dev tun0
sudo ip link set dev tun0 up

echo "Firewall rodando! Interface tun0 configurada em 10.0.0.1/24"
