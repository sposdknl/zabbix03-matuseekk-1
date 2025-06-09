#!/usr/bin/env bash

# Instalace balíčku net-tools (volitelné)
sudo apt-get install -y net-tools wget

# Stažení správného Zabbix 7.0 repozitáře
wget https://repo.zabbix.com/zabbix/7.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_7.0-1+ubuntu22.04_all.deb
sudo dpkg -i zabbix-release_7.0-1+ubuntu22.04_all.deb

# Aktualizace repozitářů a instalace agenta
sudo apt-get update
sudo apt-get install -y zabbix-agent2

# Konfigurace Zabbix agenta
sudo sed -i 's/^Server=.*/Server=192.168.1.2/' /etc/zabbix/zabbix_agent2.conf
sudo sed -i 's/^ServerActive=.*/ServerActive=192.168.1.2/' /etc/zabbix/zabbix_agent2.conf
sudo sed -i 's/^Hostname=.*/Hostname=ubuntu-'$(date +%s)'/' /etc/zabbix/zabbix_agent2.conf
echo "HostMetadata=SPOS" | sudo tee -a /etc/zabbix/zabbix_agent2.conf

# Aktivace a spuštění služby
sudo systemctl enable zabbix-agent2
sudo systemctl restart zabbix-agent2
