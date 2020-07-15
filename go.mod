module github.com/ChrisHirsch/kuberhealthy-storage-check

replace github.com/go-resty/resty => gopkg.in/resty.v1 v1.10.0

replace google.golang.org/cloud => cloud.google.com/go v0.37.0

replace github.com/Sirupsen/logrus => github.com/sirupsen/logrus v1.3.0

require (
	github.com/Comcast/kuberhealthy/v2 v2.2.0
	github.com/kr/pretty v0.1.0 // indirect
	github.com/sirupsen/logrus v1.4.0
	github.com/spf13/pflag v1.0.3 // indirect
	golang.org/x/sys v0.0.0-20191005200804-aed5e4c7ecf9 // indirect
	gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127 // indirect
	k8s.io/api v0.0.0-20190819141258-3544db3b9e44
	k8s.io/apimachinery v0.0.0-20190817020851-f2f3a405f61d
	k8s.io/client-go v0.0.0-20190819141724-e14f31a72a77
)

go 1.13
