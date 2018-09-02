ec=$1
if [ $ec -ne 0 ];then
	echo With error code $ec
	kill $PPID
fi