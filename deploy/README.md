### Deployment Specs

This directory contains several ways to deploy Kuberhealthy Storage check to your cluster.  You do not need all of the specs in this directory.

If you do not already have Kuberhealthy running, please visit [here](https://github.com/Comcast/kuberhealthy) and get the core services running first.
Each flat spec file here requires you to first create the `kuberhealthy` namespace with `kubectl create ns kuberhealthy` before application.  Then, simply use `kubectl apply -f` on the file to deploy the Kuberhealthy storage check into your cluster.
