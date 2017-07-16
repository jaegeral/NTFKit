#/usr/local/bin/start_proxy.sh vps03.aydell.com 9013 >> /var/log/start_proxy_vps03.log 2>&1
#/usr/local/bin/start_proxy.sh vps04.aydell.com 9014 >> /var/log/start_proxy_vps04.log 2>&1
#/usr/local/bin/start_proxy.sh vps05.aydell.com 9015 >> /var/log/start_proxy_vps05.log 2>&1
/usr/local/bin/persistant_reverse_tunnel.sh vps03.aydell.com 9013 >> /var/log/persistant_reverse_tunnel.vps03.log 2>&1
/usr/local/bin/persistant_reverse_tunnel.sh vps04.aydell.com 9014 >> /var/log/persistant_reverse_tunnel.vps04.log 2>&1
/usr/local/bin/persistant_reverse_tunnel.sh vps05.aydell.com 9015 >> /var/log/persistant_reverse_tunnel.vps05.log 2>&1
