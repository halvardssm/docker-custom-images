USERNAME=halvardm
IMAGE=deno-node

build:
	docker build -t ${USERNAME}/${IMAGE}:latest .

release: build
	docker tag ${USERNAME}/${IMAGE}:latest ${USERNAME}/${IMAGE}:${version}
	docker push ${USERNAME}/${IMAGE}:latest
	docker push ${USERNAME}/${IMAGE}:${version}
