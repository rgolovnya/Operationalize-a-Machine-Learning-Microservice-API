# Operationalize-a-Machine-Learning-Microservice-API

[![CircleCI](https://circleci.com/gh/rgolovnya/Operationalize-a-Machine-Learning-Microservice-API/tree/master.svg?style=svg)](https://circleci.com/gh/rgolovnya/Operationalize-a-Machine-Learning-Microservice-API/tree/master)




## Project Tasks
The project goal is to operationalize machine learning microservice API with docker and kubernetes. A flask ML app severs out prediction (inference) of house pricing through API. Docker is the most popular container platform technoly. Kubernetes is an open-source container-orchestration system for automating application deployment, scaling, and management.



## This project will cover:

 - Testing the code using linting
- Completing a Dockerfile to containerize this application
- Deploying the containerized application using Docker and making a prediction
- Improving the log statements in the source code for this application
- Configuring Kubernetes and creating a Kubernetes cluster
- Deploying a container using Kubernetes and making a prediction
- Uploading a complete Github repo with CircleCI to indicate that the code has been tested


## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

#### Running the project in Kubernetes

1. Run `minikube start` to start the VM in which the Kubernetes cluster will run.
2. Run `./upload_docker.sh` to upload the image to Docker Hub.
3. Run `./run_kubernetes.sh` to fetch the image from Docker Hub and run it locally in `minikube`; it might be necessary to run this two times, since pulling the image usually takes some time.
4. In a new bash instance, run `./make_prediction.sh` to send a request; output examples can be found in the `output_txt_files` folder.
