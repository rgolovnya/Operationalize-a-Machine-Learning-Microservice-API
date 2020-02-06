# Operationalize-a-Machine-Learning-Microservice-API

## Project Tasks
The project goal is to operationalize this working, machine learning microservice using kubernetes, which is an open-source system for automating the management of containerized applications.

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

1. Run `minikube start` to start the VM in which the Kubernetes cluster will run; if your machine does not support virtualization, run `sudo minikube start --vm-driver=none`.
2. Run `./upload_docker.sh` to upload the image to Docker Hub.
3. Run `./run_kubernetes.sh` to fetch the image from Docker Hub and run it locally in `minikube`; it might be necessary to run this two times, since pulling the image usually takes some time.
4. In a new bash instance, run `./make_prediction.sh` to send a request; output examples can be found in the `output_txt_files` folder.
