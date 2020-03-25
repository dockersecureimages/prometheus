# Prometheus

Prometheus, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/prometheus:2.17.0-alpine-3.11.5
2020/03/25 10:20:55 [INFO] ▶ Start clair-scanner
2020/03/25 10:20:56 [INFO] ▶ Server listening on port 9279
2020/03/25 10:20:56 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/03/25 10:20:57 [INFO] ▶ Analyzing 1b427412a7dcf382730dfd467d72972d7b846b1a30e2f7c2be836333e0d78480
2020/03/25 10:20:57 [INFO] ▶ Analyzing b6c1cc9f3784c33159d6eea6d4136db8043ef5595b855719304fa221ebb7abdf
2020/03/25 10:20:57 [INFO] ▶ Analyzing 7d1f0d59607541fd572c427d869f31899a7934e40df8b531b77c581d90ef48ea
2020/03/25 10:20:57 [INFO] ▶ Image [secureimages/prometheus:2.17.0-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress secureimages/prometheus:2.17.0-alpine-3.11.5
2020-03-25T08:21:04.016Z        INFO    Need to update DB
2020-03-25T08:21:04.016Z        INFO    Downloading DB...
2020-03-25T08:21:09.088Z        INFO    Reopening DB...
2020-03-25T08:21:11.779Z        INFO    Detecting Alpine vulnerabilities...

secureimages/prometheus:2.17.0-alpine-3.11.5 (alpine 3.11.5)
============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/prom/prometheus](https://hub.docker.com/r/prom/prometheus)
```
docker pull prom/prometheus:v2.17.0
```

Security scanning using Clair
```
clair-scanner prom/prometheus:v2.17.0
2020/03/25 10:21:16 [INFO] ▶ Start clair-scanner
2020/03/25 10:21:18 [INFO] ▶ Server listening on port 9279
2020/03/25 10:21:18 [INFO] ▶ Analyzing 667676fde0639ebeb24e821cffbc240bb254c45c09d8c7d737f23b9fbfe68391
2020/03/25 10:21:18 [INFO] ▶ Analyzing 88a46c70cad3e63727733abeb37ff75c991e33e537ea7917cfbf694d45c34e24
2020/03/25 10:21:18 [INFO] ▶ Analyzing 4678a63382cc644a3b7c4f18fe917ac5192bff9f5b56f51386740ed4bfbba624
2020/03/25 10:21:18 [INFO] ▶ Analyzing f93fe10c3ada5ed98503d98c2be6bbc4ce9c046ca80f1ee33496ae58c1f99f8d
2020/03/25 10:21:18 [INFO] ▶ Analyzing d89b20bc6419b6f3dc73cc512b706d55ec826660ebe19eaf7f03ed3d37c29d46
2020/03/25 10:21:18 [INFO] ▶ Analyzing a0f2a0c7349cd22de2053014b7cbeb91b0b7589cd9493ca93023e4718de44deb
2020/03/25 10:21:18 [INFO] ▶ Analyzing f4feaf7b70cd0885480c90de2dd0286e57a339922d90fa19400f69f31d8e1d8a
2020/03/25 10:21:18 [INFO] ▶ Analyzing 436f21b029e0d3332e40e518d3b23bd58423acc0e6e06440f5a58281ec1bceb9
2020/03/25 10:21:18 [INFO] ▶ Analyzing 21c65a6e733ea4eeb1ab9364f8b4290a5b6135d19ec967f3e3b8905b1383b2cd
2020/03/25 10:21:18 [INFO] ▶ Analyzing db80c7c4c80137a333a4afbe7bbce61a21769c9aa1629ce7816c41492a56c229
2020/03/25 10:21:18 [INFO] ▶ Analyzing 18c0329381b3bba727adea8bc5cda3ebf21ae0e3ae375507471ca6c0023de094
2020/03/25 10:21:18 [INFO] ▶ Analyzing 083ac2b106c31aabc6bae0688cf4747c24bc7cda7817b592c6415de7458f3550
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress prom/prometheus:v2.17.0
2020-03-25T08:21:25.163Z        INFO    Need to update DB
2020-03-25T08:21:25.163Z        INFO    Downloading DB...
2020-03-25T08:21:30.824Z        INFO    Reopening DB...
2020-03-25T08:21:33.223Z        FATAL   error in image scan: scan failed: failed to apply layers: unknown OS
```
