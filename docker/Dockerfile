FROM registry.access.redhat.com/ubi8/ubi as base

ARG ANSIBLE_VERSION
ARG ANSIBLE_LINT_VERSION

RUN dnf install --refresh -y \
    openssh-clients \
    python39 \
    git \
    rsync \
    sshpass && \
    useradd -ms /bin/bash ansible

COPY ansible_autocomplete.sh /etc/profile.d/ansible_autocomplete.sh

RUN pip3 install -I \
    ansible==${ANSIBLE_VERSION} \
    ansible-lint==${ANSIBLE_LINT_VERSION} \
    argcomplete 

USER ansible
WORKDIR /home/ansible
CMD ["ansible-playbook", "--version"]

# +++++++++++++++++++++++++ with-convenience-packages target +++++++++++++++++++++++++++++++++++++
FROM base as with-convenience-packages

USER root

RUN dnf install -y \
    unzip \
    iputils \
    bind-utils \
    nmap

USER ansible