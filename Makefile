VERSION=0.0.4

build: 
	docker build -t chrishirsch/kuberhealthy-storage-check:v${VERSION} -f Dockerfile .

multiarchbuild: 
	docker buildx build --platform linux/amd64,linux/arm64 -t chrishirsch/kuberhealthy-storage-check:v${VERSION} -f Dockerfile .

push:
	docker push chrishirsch/kuberhealthy-storage-check:v${VERSION}

multiarch: # Push both arm64 and amd64 
	docker buildx build --platform linux/amd64,linux/arm64 -t chrishirsch/kuberhealthy-storage-check:v${VERSION} --push -f Dockerfile .

apply:
	kubectl apply -f deploy/storage-check.yaml  

clean:
	rm -f ./kuberhealthy-storage-check
	kubectl delete -f deploy/storage-check.yaml
