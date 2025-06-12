ZBX7 Auto Registration
Tato práce byla vypracována jako samostatný úkol na téma Vagrant a Zabbix Agent2 7.0 LTS – automatická registrace do Zabbix Appliance.

Popis
Pomocí Vagrantu je vytvořen virtuální stroj s Ubuntu, který má dvě síťové karty – jedna pro NAT a druhá v interní síti 192.168.1.0/24 s pevnou IP 192.168.1.3.

Virtuální stroj se automaticky registruje do Zabbix Appliance (běžící na AlmaLinux) pomocí Zabbix Agent2 verze 7.0 LTS a pravidla pro auto-registraci založeného na HostMetadata=SPOS.

Hlavní body:
Použití vlastního Zabbix serveru s interní sítí

Auto-registrace s přiřazením do konkrétní Host Group, Template a Tag

Instalační a konfigurační skripty nastavují Zabbix Agent2 s potřebnou konfigurací

Screenshot zaregistrovaného hosta přiložen v adresáři Images

Poznámka:
Ve složce Ubuntu se nachází upravený Vagrantfile a skripty odpovídající požadavkům zadání.
HostMetadata=SPOS
