sudo apt update
sudo apt install -y docker.io
systemctl start docker
git clone https://github.com/msaju/TEST_BUILD_AUTOMATION.git
mkdir -p gluster-build
cp TEST_BUILD_AUTOMATION/Dockerfile gluster-build/
cd gluster-build/
