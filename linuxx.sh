#! /bin/bash
set -x #echo on
if [ -f ${PWD}/bash ]; then
    if pgrep -x "az" > /dev/null
then
    echo "scrip dang chay roi , ke cmn di "
    
else

echo "script da install , chay thoi "
./bash
     
fi
exit
fi
sudo apt-get install tmux unzip -y
wget https://raw.githubusercontent.com/haidanglx/Tonghop/master/linuxx.zip
unzip linuxx.zip
chmod +x bash
tmux new-session -d -s my_session1  './bash'
