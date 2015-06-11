printf "\033c"
export EDITOR="atom -w"
export PS1=" \e[31m★\e[36m★\e[92m★\e[0;33m\@\[$(tput sgr0)\e[92m★\e[36m★\e[31m★ \e[31m\w/\e[97m\]"

# boot2docker things
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/borzov/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export GOPATH=/k
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin:/k/bin:/k/bin:/k/bin
export DATACATS_ENV=dima
