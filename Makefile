DOCKER_USERNAME=halvardm
IMAGE_BASE=ubuntu-base
IMAGE_DENO_NODE=deno-node

build_base:
	docker build -t ${DOCKER_USERNAME}/${IMAGE_BASE}:latest ubuntu-base

build_deno_node:
	docker build --platform=linux/amd64 -t ${DOCKER_USERNAME}/${IMAGE_DENO_NODE}:latest deno-node

