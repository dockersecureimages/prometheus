# Prometheus

Prometheus, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/prometheus:2.16.0-alpine-3.11.3
2020/02/14 15:20:52 [INFO] ▶ Start clair-scanner
2020/02/14 15:20:54 [INFO] ▶ Server listening on port 9279
2020/02/14 15:20:54 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/02/14 15:20:54 [INFO] ▶ Analyzing 8468117332db61993a654db2b0a7bd78e5817da1d7afd0bf46b7504a4877d578
2020/02/14 15:20:54 [INFO] ▶ Analyzing 2e725590c0f5ba15dd018e6f7fb2de674d1054747ed531845c074721b9b75073
2020/02/14 15:20:54 [INFO] ▶ Analyzing f19e702d798b13a528f7e2762ec56a15ab3c1199b358a06321726ab1fb8cd315
2020/02/14 15:20:54 [INFO] ▶ Image [secureimages/prometheus:2.16.0-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress secureimages/prometheus:2.16.0-alpine-3.11.3
2020-02-14T13:21:00.994Z        INFO    Need to update DB
2020-02-14T13:21:00.994Z        INFO    Downloading DB...
2020-02-14T13:21:05.406Z        INFO    Reopening DB...
2020-02-14T13:21:08.192Z        INFO    Detecting Alpine vulnerabilities...

secureimages/prometheus:2.16.0-alpine-3.11.3 (alpine 3.11.3)
============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/prom/prometheus](https://hub.docker.com/r/prom/prometheus)
```
docker pull prom/prometheus:v2.16.0
```

Security scanning using Clair
```
clair-scanner prom/prometheus:v2.16.0
2020/02/14 15:21:14 [INFO] ▶ Start clair-scanner
2020/02/14 15:21:16 [INFO] ▶ Server listening on port 9279
2020/02/14 15:21:16 [INFO] ▶ Analyzing 667676fde0639ebeb24e821cffbc240bb254c45c09d8c7d737f23b9fbfe68391
2020/02/14 15:21:16 [INFO] ▶ Analyzing 88a46c70cad3e63727733abeb37ff75c991e33e537ea7917cfbf694d45c34e24
2020/02/14 15:21:16 [INFO] ▶ Analyzing 40718d8cfc27f1a70c05b0bad08a51ae82222bf8a7e41b5c116599ec901bcb18
2020/02/14 15:21:16 [INFO] ▶ Analyzing 22ad8784d949def0e4bb96c56a8706e19599173d66574e9b7f0880fc10bda424
2020/02/14 15:21:16 [INFO] ▶ Analyzing bb1017e180024fa6456292b29316f037ffcbd023190402194b9c7be3f5461696
2020/02/14 15:21:16 [INFO] ▶ Analyzing 3b48da6648d5d8dd3542632d019c53a299605c45edfe1d7b3e3c1b3a207934db
2020/02/14 15:21:16 [INFO] ▶ Analyzing e7569f9ca5ba67f5cc6a9240957b37f451cc42eee60ff8c0e21a3ea3334f4947
2020/02/14 15:21:16 [INFO] ▶ Analyzing 7b74edfd2a69f1958b1374ece95174b7a4c824d1f67824d59af03f11849000e1
2020/02/14 15:21:16 [INFO] ▶ Analyzing 0b3607046540cb53fadc0cb3fbf5c7e86c08a60f6e16754b21c3dbe6973f969f
2020/02/14 15:21:16 [INFO] ▶ Analyzing d3a854d55b1dc8d1d942c40140f42b1d3ff9cecfc4f33dfef43a0fe3accd7b23
2020/02/14 15:21:16 [INFO] ▶ Analyzing 885018f2e80e9def8bdfb7a0cc7404b46e2cb673c81e89429a4e44fc67ee152d
2020/02/14 15:21:16 [INFO] ▶ Analyzing a5ac1ba276d888bf1ca39bb4a43d55150def0fdafe3907b1beb1632334df4583
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress prom/prometheus:v2.16.0
2020-02-14T13:21:23.740Z        INFO    Need to update DB
2020-02-14T13:21:23.740Z        INFO    Downloading DB...
2020-02-14T13:21:27.185Z        INFO    Reopening DB...
2020-02-14T13:21:29.123Z        FATAL   error in image scan: failed to scan the image: failed to analyze OS: Unknown OS
```
