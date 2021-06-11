# We need setup-os for containers directly pulled from Quay without a docker file build.
# This file is specifically intended for Centos8:Stream build for Gluster

/usr/sbin/init

yum -y --setopt tsflags=nodocs --enablerepo=powertools install automake autoconf libtool flex bison \
    openssl-devel libxml2-devel libaio-devel readline-devel glib2-devel userspace-rcu-devel \
    libacl-devel fuse-devel redhat-rpm-config rpcgen libtirpc-devel make python3-devel rsync libuuid-devel \
    rpm-build git attr libcurl-devel selinux-policy-devel firewalld liburing-devel epel-release

yum -y update --setopt tsflags=nodocs && yum clean all && rm -rf /var/cache/yum
