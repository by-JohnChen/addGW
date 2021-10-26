#!/bin/sh
gw=$(ifconfig|grep P-t-P|awk '{print $3}'|cut -d ":" -f 2) #get PPPOE default Gateware from interface
for i in $gw;
do
    route add default gw $i #add the gateware into route table.
done
