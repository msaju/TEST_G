FROM centos:8

LABEL project="gluster-build"
LABEL maintainer "sajmoham@redhat.com"


RUN yum --enablerepo=powertools install automake autoconf libtool flex bison \        
    openssl-devel libxml2-devel libaio-devel libibverbs-devel librdmacm-devel \
    readline-devel lvm2-devel glib2-devel userspace-rcu-devel libcmocka-devel \
    libacl-devel sqlite-devel fuse-devel redhat-rpm-config rpcgen libtirpc-devel \
    make python3-devel rsync libuuid-devel rpm-build perl-Test-Harness \
    git attr libcurl-devel selinux-policy-devel -y

RUN dnf -y install epel-release

RUN yum --enablerepo=powertools -y install rpcgen

RUN yum -y update
 

CMD ["/usr/sbin/init"]

COPY ./startscript.sh /

RUN chmod +x /startscript.sh

CMD /startscript.sh
