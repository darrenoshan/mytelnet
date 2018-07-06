#!/bin/bash
address=`echo $1 | cut -d / -f 3`
address=`echo $address | cut -d ':' -f 1`
port=''
port=`echo $1 | cut -d ':' -f 3`
if [ -z "${port}" ]; then
port=23
fi

mate-terminal --tab -t "${address}"  -e "telnet ${address} ${port}" --hide-menubar
