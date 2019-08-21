IMAGE := 0cloud0/private
VERSION:= $(echo -n ROOT.war | md5sum)

test:
	false

image:
	docker build -t ${IMAGE}:${VERSION} .
	docker tag ${IMAGE}:${VERSION} ${IMAGE}:latest

push-image:
	docker push ${IMAGE}:${VERSION}


.PHONY: image push-image test
