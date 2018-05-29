#!/bin/expect  

localfile="/Users/liugangyi/.jenkins/workspace/awallet/coinrising/build/outputs/apk/Debug"
remotedir="/home/developer/write/"
remoteUser="developer"
remoteHost="192.168.113.2"
passwd="123456"

function filename_scp() 
{ 
expect -c "
set timeout -1
spawn bash -c \"scp -rp -oUserKnownHostsFile=/dev/null $localfile $remoteUser@$remoteHost:$remotedir \"
expect {
\"(yes/no)?\" {
send \"yes\r\"
expect \"password:\"
send \"${passwd}\r\"
}
\"password:\" {
send \"${passwd}\r\"
}
}
expect eof
"
}

filename_scp
