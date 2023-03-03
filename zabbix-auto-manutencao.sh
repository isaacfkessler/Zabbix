#!/bin/bash

## SCRIPT DESENVOLVIDO PARA RESOLVER ERROS RECORRENTES DO SERVIDOR DO ZABBIX

# LIMPA O CACHE DO ZABBIX
systemctl restart zabbix-server

# LIMPA A MEMÓRIA SWAP
sudo swapoff -av
sudo swapon -av

# LIMPA O CACHE DA MEMÓRIA RAM
sync
echo 3 > /proc/sys/vm/drop_caches



## Autor: Isaac Fortes Kessler
### GitHub: isaacfkessler