yum update -y
yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2
# for docker installation.
yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce docker-ce-cli containerd.io

# for ansible installation.
yum install -y epel-release
yum install -y gcc python-pip python-devel openssl-devel libffi-devel
pip install --upgrade pip setuptools
pip install ansible==2.2.0.0