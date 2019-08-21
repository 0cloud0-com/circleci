IMAGE := 0cloud0/private
VERSION:= $(echo -n ROOT.war | md5sum | awk '{ print $1 }')

test:
	false

image:
	docker build -t 3 .
	docker tag ${IMAGE}:${VERSION} ${IMAGE}:latest

push-image:
	docker push ${IMAGE}:${VERSION}


.PHONY: image push-image test
