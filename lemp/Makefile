USERNAME=
IMAGE=debian

build:
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
