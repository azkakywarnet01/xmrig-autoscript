# Installs Dependencies 
sudo yum install -y epel-release tmux expect
sudo yum install -y git make cmake gcc gcc-c++ libstdc++-static libmicrohttpd-devel libuv-static
# Downloads Package and Installs
git clone https://github.com/xmrig/xmrig.git
cd xmrig
mkdir build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DUV_LIBRARY=/usr/lib64/libuv.a -DWITH_TLS=OFF
make
# Moves and Runs Expect Script. 
mv ~/xmrig-autoscript/expect-2.sh ~/xmrig-autoscript/xmrig/build
expect ./expect-2.sh
# Runs tmux to keep a session open even after closing
tmux
# Kill sigterm
trap "" 15
trap '' SIGINT
trap ''  SIGQUIT
trap '' SIGTSTP
# Final Script Run -- **CHANGE ALGO, POOL AND USER BELOW**
