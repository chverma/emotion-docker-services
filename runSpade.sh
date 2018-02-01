#/usr/bin/env bash
address=$(ip address | grep "/16" | awk '{print $2}' | awk -F "/" '{print $1}')
python configure.py $address
./runspade.py
