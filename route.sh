#!/bin/sh
gw=$(ifconfig|grep P-t-P|cut -d " " -f 14|cut -d ":" -f 2) #get PPPOE default Gateware from interface
for i in $gw;
do
    route add default gw $i
done
