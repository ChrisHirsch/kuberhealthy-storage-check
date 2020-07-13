deploy: build push

build: 
	docker build -t chrishirsch/kuberhealthy-storage-check:v0.0.1 -f Dockerfile .

push:
	docker push chrishirsch/kuberhealthy-storage-check:v0.0.1

apply:
	kubectl apply -f deploy/storage-check.yaml  


clean:
	rm -f ./kuberhealthy-storage-check
	kubectl delete -f deploy/storage-check.yaml
