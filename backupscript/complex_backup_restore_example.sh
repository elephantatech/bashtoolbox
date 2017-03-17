#!/usr/bin/env bash
# This is a backup and restore script for lighttpd hosted webpage
# Using the simple_backup_restore.sh script found at
# https://github.com/elephantatech/bashtoolbox/blob/master/backupscript/simple_backup_restore.sh
# This script logs the actions on the syslog with a warning message and also print to screen when run
#
set -e

echo "##############################################"
echo "#      Lighttpd webpage Backup/Restore       #"
echo "##############################################"
archive=$2

backup_config()
{
  # created a backup with the file name provided
  logger -t "$0" -s "Running Backup of webpage" -p warn
	sudo tar cvzf ./$archive -C / /var/www/html
  logger -t "$0" -s "Backup created $archive" -p warn
}

restore_config()
{
	logger -t "$0" -s "Restoring Backup $2" -p warn
	sudo tar xvzf ./$archive -C /;
	logger -t "$0" -s "re-apply permissions" -p warn
	sudo chown -R www-data:www-data /var/www && sudo chmod -R 775 /var/www && sudo usermod -a -G www-data serveradmin && sudo chmod 777 /usr/local/bin/DatarakeExtractor.sh
	logger -t "$0" -s "restart webservice" -p warn
	sudo service lighttpd force-reload;
	logger -t "$0" -s "restore completed" -p warn
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
	echo "Run with"
    echo "$0 <backup|restore> [archivefile.tar.gz]"
	echo ""
	echo ""
    exit 1
esac
exit 0
