#!/bin/sh
# DTrace is gated by system integrity protection starting from OSX 10.11 - it needs to be disabled for this script to work

MPPIPE=/tmp/.microprofilecspipe
while true;
do
	echo "DTrace run; output file: $MPPIPE"
	mkfifo $MPPIPE
	dtrace -q -n fbt::thread_dispatch:return'{printf("MPTD %x %x %x %x\n", cpu, pid, tid, machtimestamp)}' -o $MPPIPE
	rm $MPPIPE
done
