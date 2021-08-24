# Prometheus

Prometheus, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~199MB)

Security scanning using Clair
```
clair-scanner secureimages/prometheus:2.29.1-alpine-3.14.1
2021/08/24 09:07:09 [INFO] ▶ Start clair-scanner
2021/08/24 09:07:11 [INFO] ▶ Server listening on port 9279
2021/08/24 09:07:11 [INFO] ▶ Analyzing 11cbe68173689fb732863a26e9c9217da15b278edc951dcae1effb426247f521
2021/08/24 09:07:12 [INFO] ▶ Analyzing 5de91683b31162ecab9dcd28a8f0327477f2a2279d31e0e76a7ef9c583a475f6
2021/08/24 09:07:12 [INFO] ▶ Analyzing 350e5dd94f225656b7f6f5311ccbbe939a8eb5a9e450294e7151cece67b7d82a
2021/08/24 09:07:12 [INFO] ▶ Analyzing 23228dded065c9f86d604291df4c4bdb0e385ee3745c5d55fd26e57389b45c5e
2021/08/24 09:07:12 [WARN] ▶ Image [secureimages/prometheus:2.29.1-alpine-3.14.1] contains 1 total vulnerabilities
2021/08/24 09:07:12 [ERRO] ▶ Image [secureimages/prometheus:2.29.1-alpine-3.14.1] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.19.2 --no-progress secureimages/prometheus:2.29.1-alpine-3.14.1
2021-08-24T09:07:16.999Z        INFO    Need to update DB
2021-08-24T09:07:16.999Z        INFO    Downloading DB...
2021-08-24T09:07:21.951Z        INFO    Detected OS: alpine
2021-08-24T09:07:21.951Z        INFO    Detecting Alpine vulnerabilities...
2021-08-24T09:07:21.951Z        INFO    Number of language-specific files: 2
2021-08-24T09:07:21.951Z        INFO    Detecting gobinary vulnerabilities...

secureimages/prometheus:2.29.1-alpine-3.14.1 (alpine 3.14.1)
============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)


usr/local/bin/prometheus (gobinary)
===================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)


usr/local/bin/promtool (gobinary)
=================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~196MB)

[https://hub.docker.com/r/prom/prometheus](https://hub.docker.com/r/prom/prometheus)
```
docker pull prom/prometheus:v2.29.1
```

Security scanning using Clair
```
clair-scanner prom/prometheus:v2.29.1
2021/08/24 09:07:51 [INFO] ▶ Start clair-scanner
2021/08/24 09:07:54 [INFO] ▶ Server listening on port 9279
2021/08/24 09:07:54 [INFO] ▶ Analyzing ccdc8d17c85badb2d49ffd2e13a368677b69bdb27ef6080b968472ad81342ece
2021/08/24 09:07:54 [INFO] ▶ Analyzing 3e11f1a7fb6fffaeac4f8008521afeeb60ef96697a8b9bcb90fe67ee6279ae45
2021/08/24 09:07:54 [INFO] ▶ Analyzing 8ec38cdfd33a2202c593aaa77b9e162a186e52353fb050d80bb7364df5c6abe7
2021/08/24 09:07:54 [INFO] ▶ Analyzing 965c761ed87cb41ba2c0d811539958bbdc9ca8e9edd1811362a68efd883fea9b
2021/08/24 09:07:54 [INFO] ▶ Analyzing aa8e83890a5aa5934761d9ab828f5ffc2d9daabbcf2c932b02b057d9cc3c6795
2021/08/24 09:07:54 [INFO] ▶ Analyzing 169fce97a5ad20d5b9c8e467be2a6bbcdac5c59a132e9e37dd21ed40f365bcfe
2021/08/24 09:07:54 [INFO] ▶ Analyzing dde982ecdcab9de98342519679806f3944f0af345a9dc1f83443482b07f5e277
2021/08/24 09:07:54 [INFO] ▶ Analyzing d04b1a04664333cbeeae2b1885cd9b6994598eab37ba82b911831aeb46e22524
2021/08/24 09:07:54 [INFO] ▶ Analyzing 217893763ad589c89f5a35003fb8def35b71a51bfe0642ae2baca7d26bb23d79
2021/08/24 09:07:54 [INFO] ▶ Analyzing 7b3b7b9589946479898520a57bee0f0e99feb2f5dd6eafe5f94b282531314482
2021/08/24 09:07:54 [INFO] ▶ Analyzing cda8924cd5a577ac90c0a24f3ef34a5d44bb2339f92fcbec9c929af45edf70b4
2021/08/24 09:07:54 [INFO] ▶ Analyzing c46bff33bbeff99a823d1dfbed801cc44b81a8d8c1b65ce0d536ecd00d98e916
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.19.2 --no-progress prom/prometheus:v2.29.1
2021-08-24T09:08:10.988Z        INFO    Need to update DB
2021-08-24T09:08:10.988Z        INFO    Downloading DB...
2021-08-24T09:08:17.941Z        INFO    Number of language-specific files: 2
2021-08-24T09:08:17.942Z        INFO    Detecting gobinary vulnerabilities...

bin/prometheus (gobinary)
=========================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)


bin/promtool (gobinary)
=======================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
