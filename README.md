# Prometheus

Prometheus, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~143MB)

Security scanning using Clair
```
clair-scanner secureimages/prometheus:2.18.1-alpine-3.11.6
2020/05/08 11:02:10 [INFO] ▶ Start clair-scanner
2020/05/08 11:02:11 [INFO] ▶ Server listening on port 9279
2020/05/08 11:02:11 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/05/08 11:02:12 [INFO] ▶ Analyzing 6cd087d614e8f7032ac6d442c415dc3853ea1b31c465b3ebc371371f3f4da790
2020/05/08 11:02:12 [INFO] ▶ Analyzing d0a88712b954e05b99fcc829a9635f1c3165a85f74559bd3794581c85d5a96ec
2020/05/08 11:02:12 [INFO] ▶ Analyzing 4f7441af73fa988392250e73510b56aed29cfd31adf20b6fcb6dc43e4d1bf369
2020/05/08 11:02:12 [INFO] ▶ Image [secureimages/prometheus:2.18.1-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/prometheus:2.18.1-alpine-3.11.6
2020-05-08T08:02:17.623Z        INFO    Need to update DB
2020-05-08T08:02:17.623Z        INFO    Downloading DB...
2020-05-08T08:02:24.696Z        INFO    Detecting Alpine vulnerabilities...

secureimages/prometheus:2.18.1-alpine-3.11.6 (alpine 3.11.6)
============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~140MB)

[https://hub.docker.com/r/prom/prometheus](https://hub.docker.com/r/prom/prometheus)
```
docker pull prom/prometheus:v2.18.1
```

Security scanning using Clair
```
clair-scanner prom/prometheus:v2.18.1
2020/05/08 11:02:32 [INFO] ▶ Start clair-scanner
2020/05/08 11:02:34 [INFO] ▶ Server listening on port 9279
2020/05/08 11:02:34 [INFO] ▶ Analyzing 667676fde0639ebeb24e821cffbc240bb254c45c09d8c7d737f23b9fbfe68391
2020/05/08 11:02:34 [INFO] ▶ Analyzing 88a46c70cad3e63727733abeb37ff75c991e33e537ea7917cfbf694d45c34e24
2020/05/08 11:02:34 [INFO] ▶ Analyzing e2bdab7d78292aa02140b41e165adb7f57e2ed39fa8b0496049bec03c7299907
2020/05/08 11:02:34 [INFO] ▶ Analyzing 553b1c2788f2fa976256dd6df1ffdbe7b43940c6eb82a707094ac0cfd93d8ffa
2020/05/08 11:02:34 [INFO] ▶ Analyzing 3fa1601dfe408fb9bae491b2e2b40a47adc7911af85e2ee45154db8caf0d90ac
2020/05/08 11:02:34 [INFO] ▶ Analyzing 439cf5a9c410280948d0c4a4a096c66d23dcc1a9e678a3c1599f485751479502
2020/05/08 11:02:34 [INFO] ▶ Analyzing f782b226d5ddfeadaf5817542413a12f090ac1b02716cf69ee61c6774c489ecd
2020/05/08 11:02:34 [INFO] ▶ Analyzing d8ded715b543784b9562cf822791bc83da20d286ffb1f80f963cd59fc5acb5af
2020/05/08 11:02:34 [INFO] ▶ Analyzing c70975d448826476608c421c1ba5e17d1445ee0a7b4957ef998a2939afa6384f
2020/05/08 11:02:34 [INFO] ▶ Analyzing 7abbc5e3dfd55469b4e78a8ffb41bedbcc4a9db724a994221f169923edef6806
2020/05/08 11:02:34 [INFO] ▶ Analyzing 347933c86e1b097041c669f53ce82b8ac2d2c89d7ec84e6950f59e77723226de
2020/05/08 11:02:34 [INFO] ▶ Analyzing f1b7fe02246f36c2987870850c51e4e9780d200ca96a411bb9f61d4bc96966c3
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress prom/prometheus:v2.18.1
2020-05-08T08:02:39.692Z        INFO    Need to update DB
2020-05-08T08:02:39.692Z        INFO    Downloading DB...
2020-05-08T08:02:45.679Z        FATAL   error in image scan: scan failed: failed to apply layers: unknown OS
```
