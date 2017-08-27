#!/bin/bash

docker run --name prod_jenkins --restart=unless-stopped -d \
-p 8080:8080 \
-v /opt/prod_jenkins:/var/jenkins_home \
-v /opt/prod_jenkins/kubernetes/kubectl:/usr/bin/kubectl \
jenkins
#--add-host build-image-server-1:10.1.5.129 \
#--add-host test-image-server-1:10.1.5.139 \
