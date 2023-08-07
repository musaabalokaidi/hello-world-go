# hello-world-app
A containerized Golang Hello World app used to PoC

## required tools
- docker

## ci
A CI pipeline will run on commit to any branch. This will create a release container with the ```latest``` tag in the ```hello-world/release``` repo the it will deploy the container to the ```hello-world/dev``` repo

## cd

A CD pipeline will be configured using GitOps. This will automatically pull the latest images deployed to the environment repo.