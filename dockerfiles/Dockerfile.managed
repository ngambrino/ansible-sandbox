FROM redhat/ubi9

RUN dnf install -y openssh-server sudo \
  && dnf clean all

RUN useradd -m admin
RUN echo 'admin:password' | chpasswd
RUN usermod -aG wheel admin
RUN echo '%wheel ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

RUN ssh-keygen -A

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
