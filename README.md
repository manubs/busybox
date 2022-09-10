# Busybox

# Project Details

This project was initially build for debugging and troubleshooting application on container.
We can use this docker image as side car container for troubleshooting purposes.


# Installation

git clone https://github.com/manubs/busybox.git

#Kubernetes Manifest 
---
apiVersion: v1
kind: Pod
metadata:
  name: busybox2
  namespace: default
spec:
  containers:
  - image: manubs/alpine:2.0
    name: alpine
    command: [ "/bin/sh", "-c", "--" ]
    args: [ "while true; do sleep 30; done;" ]
    resources:    
      requests:
        memory: "500Mi"
        cpu: "0.8"
      limits:
        memory: "1Gi"
        cpu: "1"


# Contact
Your Name - manojbangari39@gmail.com
