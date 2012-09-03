threads=4
param=""
if [ $# > 0 ] ; then
    threads=$1
fi

if [ $# > 1 ] ; then
    param=$2
fi

export PATH=$PATH:/home/tassadar/arm-eabi-4.4.0/bin
make ARCH=arm CROSS_COMPILE=arm-eabi- -j$threads $param