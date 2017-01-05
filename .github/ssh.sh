#!/bin/sh

# Absolute path to this script. /home/user/bin/foo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in. /home/user/bin
SCRIPTPATH=`dirname "$SCRIPT"`
CURRENTDIR=$PWD

cd "$SCRIPTPATH"
cp id_rsa /tmp/
cp id_rsa.pub /tmp/
cd "$CURRENTDIR"
chmod 600 /tmp/id_rsa /tmp/id_rsa.pub
ssh -i /tmp/id_rsa "$@" 
rm /tmp/id_rsa /tmp/id_rsa.pub
