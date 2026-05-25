FROM redhat/ubi9

RUN dnf install -y openssh-clients sshpass python3 python3-pip \
  && dnf clean all
