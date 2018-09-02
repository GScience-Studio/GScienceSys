echo Compile file $1
nasm $1 -o $2
./assert.sh $?