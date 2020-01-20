include assembly.mk
USERNAME=
IMAGE=debian
DOCKER_USERNAME=
DOCKER_REPO=linux-toolchain
DOCKER_TAG=latest
DOCKER_IMAGE=$(DOCKER_USERNAME)/$(DOCKER_REPO):$(DOCKER_TAG)
DOCKER_ZSH=/bin/zsh -c
DOCKER=$(DOCKER_SH) $(DOCKER_ZSH)

SH=

build: get-wordpress
	docker build -t $USERNAME/$IMAGE:latest .

release: build
	docker run --rm -v "$PWD":/app $USERNAME/bump patch
	version=`cat VERSION`
	echo "version: $version"
	git add -A
	git commit -m "version $version"
	git tag -a "$version" -m "version $version"
	git push --tags
	docker tag $USERNAME/$IMAGE:latest $USERNAME/$IMAGE:$version
	docker push $USERNAME/$IMAGE:latest
	docker push $USERNAME/$IMAGE:$version

get-wordpress:
	curl https://wordpress.org/latest.tar.gz | tar -xz

docker_build:
	docker build . -t $(DOCKER_IMAGE)

docker_upload: docker_build
	docker push $(DOCKER_IMAGE)

run:
	docker run -it --rm -v `pwd`:/app -w /app --security-opt seccomp=unconfined $(DOCKER_IMAGE)

ssh:
	docker run -it --rm -v `pwd`:/app -w /app --security-opt seccomp=unconfined $(DOCKER_IMAGE)
