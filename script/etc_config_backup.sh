#!/bin/bash

backup_files="/etc/rc.local /etc/shadowsocks /etc/openvpn"
target_dir="$HOME/backup/etc"

tar -zc -P -f "$target_dir/etc_config_backup_$(date +"%Y%m%d-%H%M%S").tar.gz" $backup_files

# Delete 7 day ago backup
find $target_dir -ctime +7 | xargs rm -f
