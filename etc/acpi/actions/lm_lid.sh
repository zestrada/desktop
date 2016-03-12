#! /bin/sh

test -f /usr/sbin/laptop_mode || exit 0

#Don't change anything if external monitor is hooked up
NUM_MONITORS=`/usr/bin/xrandr -q|grep -P '\sconn'| wc -l`
test "$NUM_MONITORS" -ge "2" && exit 0

# lid button pressed/released event handler

/usr/sbin/laptop_mode auto
