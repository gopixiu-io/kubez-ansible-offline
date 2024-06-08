.PHONY: run build image push clean

tag = v2.0.1-offline
releaseName = kubez-ansible
dockerhubUser = jacky06

ALL: run

image:
	docker build --no-cache -t $(dockerhubUser)/$(releaseName):$(tag) -f docker/Dockerfile .

push: image
	docker push $(dockerhubUser)/$(releaseName):$(tag)
