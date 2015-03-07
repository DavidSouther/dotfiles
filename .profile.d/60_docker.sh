#!/bin/sh
return 

function dockerhost {
    export DOCKER_HOST=tcp://$(boot2docker ip 2>/dev/null):2375
}

function bootdocker {
    boot2docker init
    boot2docker start
    dockerhost
}

bootdocker

docker-ip() {
  boot2docker ip 2> /dev/null
}

docker-port() {
    boot2docker info | egrep -o 'DockerPort": [0-9]+' | awk '{print $2}'
}


boot2docker start 2>/dev/null > /dev/null
$(boot2docker shellinit)

#export DOCKER_HOST=tcp://$(docker-ip):$(docker-port)
#export DOCKER_CERT_PATH=$HOME/.boot2docker/certs/boot2docker-vm
#export DOCKER_TLS_VERIFY=1

 _set_docker_host(){
sudo bash << EOF
    sed -i .bak -e '/dockerhost/d' /etc/hosts
    echo $(docker-ip) dockerhost >> /etc/hosts
    rm /etc/hosts.bak
EOF
}
