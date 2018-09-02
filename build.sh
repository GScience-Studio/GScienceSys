# 构建文件夹
if [ ! -d "bin" ];then
	mkdir bin
fi

cd sh

# 编译
./compile.sh
./assert.sh $?

# 创建镜像
./create_image.sh ../bin/BootSector.bin ../bin/boot.iso 512K
./assert.sh $?