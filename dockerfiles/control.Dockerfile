FROM redhat/ubi9

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

RUN dnf install -y openssh-clients sshpass python3 python3-pip \
  && dnf clean all

WORKDIR /ansible

RUN python3 -m venv venv
ENV PATH="/ansible/venv/bin:$PATH"

COPY ./ansible/requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
