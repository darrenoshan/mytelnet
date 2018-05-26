#!/bin/bash
address=`echo $1 | cut -d / -f 3`
port=`echo $1 | cut -d / -f 4`
if [ "$port" == "" ]; then
port=23
fi

mate-terminal --tab -e -t ""  -e "telnet ${address} ${port}" --hide-menubar



