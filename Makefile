build: 
	docker build -t chrishirsch/kuberhealthy-storage-check:v0.0.3 -f Dockerfile .

push:
	docker push chrishirsch/kuberhealthy-storage-check:v0.0.3

deploy: build push

apply:
	kubectl apply -f deploy/storage-check.yaml  


clean:
	rm -f ./kuberhealthy-storage-check
	kubectl delete -f deploy/storage-check.yaml
