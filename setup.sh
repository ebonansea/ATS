# derived from http://trafficserver.readthedocs.org/en/latest/admin/getting-started.en.html#before-you-start
sudo apt-get update
sudo apt-get install vim pkg-config libtool build-essential gcc make openssl tcl tcl-dev expat libpcre3-dev libcap-dev flex hwloc lua5.2 libncurses5-dev curl git autoconf automake libxml2-dev

git clone https://git-wip-us.apache.org/repos/asf/trafficserver.git

cd trafficserver
autoreconf -if
./configure --prefix=/opt/ats --with-user=tserver
make
make check
make install
