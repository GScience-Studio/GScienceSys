echo Create image with name $2 and filled with $1 with size $3
dd if=/dev/zero of=$2 bs=$3 count=1 >/dev/null 2>&1
./assert.sh $?
dd if=$1 of=$2 conv=notrunc >/dev/null 2>&1
./assert.sh $?