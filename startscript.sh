/usr/sbin/init

mkdir github 
cd github
git config --global user.email "sajmoham@redhat.com"
git config --global user.name  "msaju"
git clone https://github.com/msaju/TEST_G.git
cd TEST_G
./autogen.sh
./configure
make
cd extras/LinuxRPM
make glusterrpms
cp *.rpm  gluster-rpms/
