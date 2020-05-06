# Prometheus

Prometheus, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~143MB)

Security scanning using Clair
```
clair-scanner secureimages/prometheus:2.18.0-alpine-3.11.6
2020/05/06 11:48:03 [INFO] ▶ Start clair-scanner
2020/05/06 11:48:05 [INFO] ▶ Server listening on port 9279
2020/05/06 11:48:05 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/05/06 11:48:05 [INFO] ▶ Analyzing 6e280ab352f12b7af9135d1837879fb809057d66f1d075bfd212c06e93af02c9
2020/05/06 11:48:06 [INFO] ▶ Analyzing 2f2d9c501ce6ace95486bdf362eefb316c2c803157f36a8c61c5087da8b35d52
2020/05/06 11:48:06 [INFO] ▶ Analyzing 89d2563f0af044228bbab62806bdb11372d9d63fd6795b500e73e8172886f7a1
2020/05/06 11:48:06 [INFO] ▶ Image [secureimages/prometheus:2.18.0-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/prometheus:2.18.0-alpine-3.11.6
2020-05-06T08:48:23.320Z        INFO    Need to update DB
2020-05-06T08:48:23.320Z        INFO    Downloading DB...
2020-05-06T08:48:38.562Z        INFO    Detecting Alpine vulnerabilities...

secureimages/prometheus:2.18.0-alpine-3.11.6 (alpine 3.11.6)
============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~140MB)

[https://hub.docker.com/r/prom/prometheus](https://hub.docker.com/r/prom/prometheus)
```
docker pull prom/prometheus:v2.18.0
```

Security scanning using Clair
```
clair-scanner prom/prometheus:v2.18.0
2020/05/06 11:48:44 [INFO] ▶ Start clair-scanner
2020/05/06 11:48:46 [INFO] ▶ Server listening on port 9279
2020/05/06 11:48:46 [INFO] ▶ Analyzing 667676fde0639ebeb24e821cffbc240bb254c45c09d8c7d737f23b9fbfe68391
2020/05/06 11:48:46 [INFO] ▶ Analyzing 88a46c70cad3e63727733abeb37ff75c991e33e537ea7917cfbf694d45c34e24
2020/05/06 11:48:46 [INFO] ▶ Analyzing 35d28c1931181e0c6af37ac0090523cd65dcb8c78d371d56c3137d09c6d440e8
2020/05/06 11:48:47 [INFO] ▶ Analyzing c941de672ba4f06a6b91543dddb0e02eaadf64f19037aad2b528ffcd4fa6eda1
2020/05/06 11:48:47 [INFO] ▶ Analyzing 6640b036d5adb791e81b3c2b43fc492fc5e510a489332794298479e416969b43
2020/05/06 11:48:47 [INFO] ▶ Analyzing d75f70a797f61895848cfe4cd2377f6c81038daf3b984f3d1b4b8fca1dadec79
2020/05/06 11:48:47 [INFO] ▶ Analyzing e98ef5521f46131f89a49ead803ae51e4758bd10685d9265c226804f5925a793
2020/05/06 11:48:47 [INFO] ▶ Analyzing 04b8e824b6ec3159e2f13b3ec68526e98e63a00d5787d5c1a4dec93183fe944d
2020/05/06 11:48:47 [INFO] ▶ Analyzing 33e9abe1ca83540d7874610ddd819d94ffdba3ebf87033d1dd410aeb8b9a32a0
2020/05/06 11:48:47 [INFO] ▶ Analyzing 5c399d43a760b13bfa019982cc6c7fd9f24200b005cfb64f0752ed2ef9c4bf85
2020/05/06 11:48:47 [INFO] ▶ Analyzing 6ea20c6fc1d48b03e5ec81dca7d6d91d52c2473b952fdaa176dcf002514ead02
2020/05/06 11:48:47 [INFO] ▶ Analyzing 29fb1927648db76d7587ff9780776b7f5f8ebb20320b9e275f8731d5b9e6133b
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress prom/prometheus:v2.18.0
2020-05-06T08:48:52.545Z        INFO    Need to update DB
2020-05-06T08:48:52.545Z        INFO    Downloading DB...
2020-05-06T08:48:59.059Z        FATAL   error in image scan: scan failed: failed to apply layers: unknown OS
```
