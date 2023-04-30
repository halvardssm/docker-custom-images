DOCKER_USERNAME=halvardm
IMAGE_ASDF=asdf
IMAGE_DENO_NODE=deno-node

build_asdf:
	docker build -t ${USERNAME}/${IMAGE_ASDF}:latest .

build_deno_node:
	docker build -t ${USERNAME}/${IMAGE_DENO_NODE}:latest .

