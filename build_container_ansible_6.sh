#/!bin/bash
docker build ./docker/ --build-arg ANSIBLE_VERSION=6.5.0 --build-arg ANSIBLE_LINT_VERSION=6.8.2 -t ansible-redhat-ubi-8