
# Softwares used 

Vagrant 2.1.5
VirtualBox Version 5.2.6 r120293 (Qt5.6.2)
ansible 2.7.10
Docker version 18.09.5
docker-compose version 1.24.0, build 0aa5906
docker hub account


A short notes on how this implemenation works:

1. Install VirtualBox in your windows machine
2. checkout the source code url - git clone https://bitbucket.org/imkarthikn_kk/challenge.git
3. Go into -> challenge/challenge-wirecard and Execute 'vagrant up' cmd in command line. 
4. Execute 'vagrant ssh' cmd to login into vagrant box ( centos 7)
5. Go into -> /usr/local/src/challenge/challenge-wirecard 
6. Build WebServer and Reverse-Proxy container and push to docker hub.

   Docker build and push to docker docker reg
   --------------------------------------------
   ( Provide your docker hub account credentials and docker tag version. )

   * ansible-playbook docker-build.yml --extra-vars "docker_push='true' docker_registry_username=<DOCKERHUB USERNAME> docker_registry_password=<DOCKERHUB PASSWORD> image_version='1.0.0'"
    
   Docker build in local and not push to docker docker reg  
   --------------------------------------------------------
   * ansible-playbook docker-build.yml --extra-vars "docker_push='false' image_version='1.0.0'"

7. Deploy the docker container to host , pull docker image from docker reg or local.

   Docker deploy from docker reg
   -------------------------------

   ( Provide dockerhub username <DOCKERHUB USERNAME> )

   * ansible-playbook docker-deploy.yml --extra-vars "pull_from_dockreg=true local=false docker_registry=<DOCKERHUB USERNAME> action=started docker_network_name=network1 image_version=1.0.0"


   Docker deploy from host 
   ---------------------------
   
   * ansible-playbook docker-deploy.yml --extra-vars "pull_from_dockreg=false local=ture action=started docker_network_name=network1 image_version=1.0.0"

8. Even we can use docker docker-compose to started the application in local

   Go into -> /usr/local/src/challenge/challenge-wirecard

  
  * /bin/docker-compose -f docker-compose.yml up --build -d 

  * /bin/docker-compose -f docker-compose.yml down

9. open your host browser and access the below link 

  ** http://localhost:8080/devopschalange/hello **

  ** https://localhost/hello **


Thank you,


