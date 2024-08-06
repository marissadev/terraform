# CircleCI build container
FROM amazonlinux:latest

RUN yum update -y --skip-broken \
  && yum install -y \
    jq \
    unzip \
    openssh-clients \
    wget \
    git \
    ssh \
    curl \
  && wget -O- https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo | tee /etc/yum.repos.d/hashicorp.repo \
  && yum install -y terraform-1.4.2 \
  && curl -s https://raw.githubusercontent.com/terraform-linters/tflint/master/install_linux.sh | bash \
  && echo 'export PATH=$PATH:/root/.local/bin' >> /root/.bashrc