# docker-ansible-redhat-ubi
Docker Ansible container based on RedHat UBI 8.
This image 

## Build Options

| Build Arg | Usage |
|-------|---------|
|ANSIBLE_VERSION | set ansible version (req.) |
|ANSIBLE_LINT_VERSION| set ansible-list version (req.)|

| Target | Usage |
|-------|---------|
| base | only install packages listed in ansible related |
| with-convenience-packages | additionaly install packages listed in convenience |

## Installed packages
### Ansible related
- ansible
- ansible-lint
- python39
- openssh-clients
- rsync
- sshpass
- argcomplete
- git

### Convenience
- unzip
- iputils
- nmap
- bind-utils

## TODOs
- [x] use non root user
- [x] option to disable convenience packages