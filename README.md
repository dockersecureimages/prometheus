# Prometheus

Prometheus, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~145MB)

Security scanning using Clair
```
clair-scanner secureimages/prometheus:2.19.2-alpine-3.12.0
2020/07/09 19:59:19 [INFO] ▶ Start clair-scanner
2020/07/09 19:59:20 [INFO] ▶ Server listening on port 9279
2020/07/09 19:59:20 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/07/09 19:59:21 [INFO] ▶ Analyzing ec44cf1382e4661ed2d3947e139ac9060d09fdcb5cc9f7ac04e56f7386a21d45
2020/07/09 19:59:21 [INFO] ▶ Analyzing 7c400d2261bc9a3e81c92107e70a2f0065cc9caa4fd8158956083dbaed466af1
2020/07/09 19:59:21 [INFO] ▶ Analyzing 51185ce70b5c2955475efdf10d476f78eb70e0394d9f5b54ba7063d330b8cd3a
2020/07/09 19:59:21 [INFO] ▶ Image [secureimages/prometheus:2.19.2-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/prometheus:2.19.2-alpine-3.12.0
2020-07-09T16:59:29.474Z        INFO    Need to update DB
2020-07-09T16:59:29.475Z        INFO    Downloading DB...
2020-07-09T16:59:36.231Z        INFO    Detecting Alpine vulnerabilities...

secureimages/prometheus:2.19.2-alpine-3.12.0 (alpine 3.12.0)
============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~142MB)

[https://hub.docker.com/r/prom/prometheus](https://hub.docker.com/r/prom/prometheus)
```
docker pull prom/prometheus:v2.19.2
```

Security scanning using Clair
```
clair-scanner prom/prometheus:v2.19.2
2020/07/09 19:59:46 [INFO] ▶ Start clair-scanner
2020/07/09 19:59:48 [INFO] ▶ Server listening on port 9279
2020/07/09 19:59:48 [INFO] ▶ Analyzing 63507318ac55546c3f2664b7aec630e2c96c15b0a8136e2be817d1c81b22f41f
2020/07/09 19:59:48 [INFO] ▶ Analyzing fb3f20436e57c5b4f818efe924255238b32f7867c491f90389a4950532b0395f
2020/07/09 19:59:48 [INFO] ▶ Analyzing 000990cab3e817e5ce2e710ae291fa544f28cd08161ce53c7ce57ef316691d51
2020/07/09 19:59:48 [INFO] ▶ Analyzing 26673b9247172f1993b5490d84af9578347c3f9054bf5a5f9f49d69df8f6a120
2020/07/09 19:59:48 [INFO] ▶ Analyzing b5ebfd614676b1b71dca2ec81af7ee5825042f332c85f1258c13a3bfc02511b7
2020/07/09 19:59:48 [INFO] ▶ Analyzing b0a5936eb85f30ad672c56365c0c2668f01d68bc556a628a33af725ea37f7c15
2020/07/09 19:59:48 [INFO] ▶ Analyzing ec14972cc063dc5ddb2ec0052320b9a9ff2fedcfeb8ed10e4cd38aae74d4917c
2020/07/09 19:59:48 [INFO] ▶ Analyzing 4746dba07bcc27f7f1c381a7fc765e52fff491fd8a434f740a3f9d340851e521
2020/07/09 19:59:48 [INFO] ▶ Analyzing 15f6f87d5d1e97dfe5605c002a41fc989a7f82c909f21743932e0236f616b03b
2020/07/09 19:59:48 [INFO] ▶ Analyzing 2b7e25208a03f5eedaf4ccb0dc423f3a575765ef8a1aec02fa9df31b1b2aa8f2
2020/07/09 19:59:48 [INFO] ▶ Analyzing ba391474ffc0e24a94a50214900e7952a652a65408a6412ff0b3a7a1f9a36dda
2020/07/09 19:59:48 [INFO] ▶ Analyzing 285768695437894785af05286b7316983315df0e14306e944c5d0412a60fd2fa
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress prom/prometheus:v2.19.2
2020-07-09T17:00:01.587Z        INFO    Need to update DB
2020-07-09T17:00:01.587Z        INFO    Downloading DB...
2020-07-09T17:00:09.423Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
```
