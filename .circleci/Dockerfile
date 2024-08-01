# CircleCI build container
FROM amazonlinux:2

RUN yum update -y \
  && yum install -y \
    jq \
    unzip \
    ssh \
    openssh-clients \
    wget \
    curl \
    git \
  && wget -O- https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo | tee /etc/yum.repos.d/hashicorp.repo \
  && yum install -y terraform-1.4.2 \
  && curl -s https://raw.githubusercontent.com/terraform-linters/tflint/master/install_linux.sh | bash \
  && echo 'export PATH=$PATH:/root/.local/bin' >> /root/.bashrc