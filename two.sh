sudo yum -y update
sudo yum install -y epel-release tmux expect
sudo yum install -y git make cmake gcc gcc-c++ libstdc++-static libmicrohttpd-devel libuv-static
git clone https://github.com/xmrig/xmrig.git
cd xmrig
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -DUV_LIBRARY=/usr/lib64/libuv.a -DWITH_TLS=OFF
make
screen
trap "" 15
trap '' SIGINT
trap ''  SIGQUIT
trap '' SIGTSTP
./xmrig-notls -o pyr.pool-pay.com:3335 -u PYX1UA6UoxqKMUB7eS97LUE9WdAPxZbQRCYVsZtRK8bvQ3Z226Tdc2a3aBoTc5wDjB94nwbdHuDeM2DcDbp1M2U38ye7KTMmdD -p x -k --donate-level=1

