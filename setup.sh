# derived from http://trafficserver.readthedocs.org/en/latest/admin/getting-started.en.html#before-you-start
sudo apt-get update
sudo apt-get install vim pkg-config libtool build-essential gcc make openssl tcl tcl-dev expat libpcre3-dev libcap-dev flex hwloc libhwloc-dev lua5.1 liblua5.1-dev libncurses5-dev curl git autoconf automake libxml2-dev

mkdir /opt/ats
adduser tserver
chown tserver:tserver /opt/ats

git clone https://git-wip-us.apache.org/repos/asf/trafficserver.git

cd trafficserver
autoreconf -if
./configure --prefix=/opt/ats --with-user=tserver --with-openssl
make
make check
make install
