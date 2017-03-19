#!/usr/bin/env bash
# author: elephantatech
# date: 2017-03-19
# script to get some information from the linux system
#
PRODUCT=`cat /etc/issue`
CURRENTDATE=`date +%Y%m%d_%H%M%S`
HOST=`hostname -s`
TMPLOGDIR=/tmp/diagnostics
ARCHIVE=/tmp/diagnostics.${HOST}.${CURRENTDATE}.tar.gz
