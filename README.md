# Prometheus

Prometheus, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~171MB)

Security scanning using Clair
```
clair-scanner secureimages/prometheus:2.22.1-alpine-3.12.1
2020/11/14 15:59:00 [INFO] ▶ Start clair-scanner
2020/11/14 15:59:02 [INFO] ▶ Server listening on port 9279
2020/11/14 15:59:02 [INFO] ▶ Analyzing ff72598b05f57e6f83d56b858ba9783796e99aea2dcef391b3fa688c1e077ae5
2020/11/14 15:59:02 [INFO] ▶ Analyzing 04f3e5561aee24a59d5a86a0a55f8750e77e55fbad87fbc0b3e1eef74e5ee218
2020/11/14 15:59:02 [INFO] ▶ Analyzing ea5b97cd248b71d92588ebe1363a04a9ec1ef844338d65e0df6fd96ce2f422ad
2020/11/14 15:59:02 [INFO] ▶ Analyzing c44d347670f690263be4ee32cd52dd250c8f5c183c960a584beb6b0f079093d8
2020/11/14 15:59:02 [INFO] ▶ Image [secureimages/prometheus:2.22.1-alpine-3.12.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.12.0 --no-progress secureimages/prometheus:2.22.1-alpine-3.12.1
2020-11-14T15:59:10.085Z        INFO    Need to update DB
2020-11-14T15:59:10.085Z        INFO    Downloading DB...
2020-11-14T15:59:16.343Z        INFO    Detecting Alpine vulnerabilities...

secureimages/prometheus:2.22.1-alpine-3.12.1 (alpine 3.12.1)
============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~168MB)

[https://hub.docker.com/r/prom/prometheus](https://hub.docker.com/r/prom/prometheus)
```
docker pull prom/prometheus:v2.22.1
```

Security scanning using Clair
```
clair-scanner prom/prometheus:v2.22.1
2020/11/14 15:59:21 [INFO] ▶ Start clair-scanner
2020/11/14 15:59:24 [INFO] ▶ Server listening on port 9279
2020/11/14 15:59:24 [INFO] ▶ Analyzing e190ccde9304b67c2ab7e688bbd97bf481172235a7261235ba4ae98e7b037e46
2020/11/14 15:59:24 [INFO] ▶ Analyzing e4023a9eb3999a69f0f67a2f279eec84f03ed4839fc442c4dec014a278ac45a9
2020/11/14 15:59:24 [INFO] ▶ Analyzing 42eef22d62a9f27b9063319dc89dfc4470bf3cc3e4e758d26c5b27079c2a39f3
2020/11/14 15:59:24 [INFO] ▶ Analyzing 487f327365fe4d8097b5d45f168f3689db59274bf5c8d1a8fb4533fe54553e0a
2020/11/14 15:59:24 [INFO] ▶ Analyzing 4bc9099b48015d7ae406cda403676a6fe98a95bacae8aea298e1f76536f63a1c
2020/11/14 15:59:24 [INFO] ▶ Analyzing d69560eccae0f24cb5eeac034726bcf64bcbe4d1a1434846d3855a87513b1830
2020/11/14 15:59:24 [INFO] ▶ Analyzing 3b26605c1f894fc100812a1f68bed1d319f95c778e83ff8de916175a9cb0d726
2020/11/14 15:59:24 [INFO] ▶ Analyzing 40110a934103fe840023d6602021fae599c68cc0238bbc1dfdd75d53a5cd422f
2020/11/14 15:59:24 [INFO] ▶ Analyzing ea9ab2461f6663dbd42048c9fc13be96b6066aacd1226b2c7e9f58c0bf636632
2020/11/14 15:59:24 [INFO] ▶ Analyzing ef09a41161216632dca29a5cc939ed06cb402cf50c13c1cd43db3991e039a0c1
2020/11/14 15:59:24 [INFO] ▶ Analyzing 404abe8d1d19cae1e87e5bea32ecd8b8db9293391b7c7eebb75635eee16f71e7
2020/11/14 15:59:24 [INFO] ▶ Analyzing 1ba9bed25b1087cee428adaa87432df1cdf2c12415b4019b953bfb223eee0edc
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.12.0 --no-progress prom/prometheus:v2.22.1
2020-11-14T15:59:27.494Z        INFO    Need to update DB
2020-11-14T15:59:27.494Z        INFO    Downloading DB...
2020-11-14T15:59:34.971Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
```
