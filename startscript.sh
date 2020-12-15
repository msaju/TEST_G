/usr/sbin/init

mkdir github 
cd github
git config --global user.email "sajmoham@redhat.com"
git config --global user.name  "msaju"
git clone https://github.com/msaju/TEST_G.git
rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
cd TEST_G
./autogen.sh
./configure
make
