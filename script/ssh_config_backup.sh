#!/bin/bash

ssh_dir="$HOME/.ssh"
target_dir="$HOME/backup/ssh"

[ ! -d "$target_dir" ] && mkdir -p "$target_dir"
 
tar -zc -f "$target_dir/ssh_config_backup_$(date +"%Y%m%d-%H%M%S").tar.gz" $ssh_dir

# Delete 7 day ago backup
find $target_dir -ctime +7 | xargs rm -f
