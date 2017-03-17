#!/usr/bin/env bash
# author: elephantatech
# date: 2017-03-17
# backup the bunch of folder and/or files with this script
#
set -e

echo "##############################################"
echo "#           Backup and restore tool          #"
echo "##############################################"

backup_config()
{
    tar cvzf ./log_backup.tar.gz -C / /var/log/;
    echo "Rreated backup file log_backup.tar.gz."
}

restore_config()
{
    tar xvzf ./log_backup.tar.gz -C /;
    echo "Restored backup file log_backup.tar.gz."
    # you can add services you want to restart here
}


case "$1" in
  backup)
	backup_config
    ;;
  restore)
    restore_config
    ;;
  *)
    echo "Usage:"
    echo "$0 <backup|restore>"
    exit 1
esac
exit 0
