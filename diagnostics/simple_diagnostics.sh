PRODUCT=`cat /etc/issue`
CURRENTDATE=`date +%Y%m%d_%H%M%S`
HOST=`hostname -s`
TMPLOGDIR=/tmp/diagnostics
ARCHIVE=/tmp/diagnostics.${HOST}.${CURRENTDATE}.tar.gz
