# Prometheus

Prometheus, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/prometheus:2.15.2-alpine-3.11.3
2020/01/20 21:10:06 [INFO] ▶ Start clair-scanner
2020/01/20 21:10:07 [INFO] ▶ Server listening on port 9279
2020/01/20 21:10:07 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/01/20 21:10:07 [INFO] ▶ Analyzing 8e5db26ba1e2ffce33104bf39d20b67549d2d02f08f6134c87e549437f405ba4
2020/01/20 21:10:07 [INFO] ▶ Analyzing 0a0c167f1f9b4a1449b6af7db704c0eef4ecc97ed49a074edf2b1ea49ae97dca
2020/01/20 21:10:07 [INFO] ▶ Analyzing 4643c797819ebeb5b9838934093fd875c25df8fcb84bb0b636e94dc8e3776d1c
2020/01/20 21:10:07 [INFO] ▶ Image [secureimages/prometheus:2.15.2-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress secureimages/prometheus:2.15.2-alpine-3.11.3
2020-01-20T19:10:26.205Z        INFO    Need to update DB
2020-01-20T19:10:26.205Z        INFO    Downloading DB...
2020-01-20T19:10:29.745Z        INFO    Reopening DB...
2020-01-20T19:10:31.880Z        INFO    Detecting Alpine vulnerabilities...

secureimages/prometheus:2.15.2-alpine-3.11.3 (alpine 3.11.3)
============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/jetbrains/teamcity-server](https://hub.docker.com/r/jetbrains/teamcity-server)
```
docker pull prom/prometheus:v2.15.2
```

Security scanning using Clair
```
clair-scanner prom/prometheus:v2.15.2
2020/01/20 21:10:48 [INFO] ▶ Start clair-scanner
2020/01/20 21:10:50 [INFO] ▶ Server listening on port 9279
2020/01/20 21:10:50 [INFO] ▶ Analyzing 667676fde0639ebeb24e821cffbc240bb254c45c09d8c7d737f23b9fbfe68391
2020/01/20 21:10:50 [INFO] ▶ Analyzing 88a46c70cad3e63727733abeb37ff75c991e33e537ea7917cfbf694d45c34e24
2020/01/20 21:10:50 [INFO] ▶ Analyzing 3f7d2af3c6b359581ccf9885df964a704433dab239e7173718a2061aab795090
2020/01/20 21:10:50 [INFO] ▶ Analyzing c44d60330683133f745a87b932b02f90229711465f008c262e66362ea7d2a3fa
2020/01/20 21:10:50 [INFO] ▶ Analyzing 3d9a14dad1f549f40255aa806a3f7879c403bbd5b06f437312b8d34a603f6afc
2020/01/20 21:10:50 [INFO] ▶ Analyzing ea74325962b76eb52178630894db52157e2c7a04154bd3fcf9afb71fbd7f6e8a
2020/01/20 21:10:50 [INFO] ▶ Analyzing 1d51a7f081d5465ef60c676a8bfcf29ff910cda9fb238b87d442d44faf1f4860
2020/01/20 21:10:50 [INFO] ▶ Analyzing 6a5845f6584925585c3aa2c847838b26a86570b386d0f82f3d0092a75a502189
2020/01/20 21:10:50 [INFO] ▶ Analyzing 7ee12f5bad7007882b6a66ace343ad643c987f8b63351f097e1d186e7a9e9fef
2020/01/20 21:10:50 [INFO] ▶ Analyzing 48facfccd3663acc29115dc3344b5bf0b9c954909dbd2290816dfd3ae2c55110
2020/01/20 21:10:50 [INFO] ▶ Analyzing c38e9ddd65839bc67f79d3ab383edaf5b93c86782a84da058baaf56d135d188b
2020/01/20 21:10:50 [INFO] ▶ Analyzing e437810ba131a84048a808cdf29cbb25673428b2c8243f327d52ae507ba6c76a
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress prom/prometheus:v2.15.2
2020-01-20T19:11:13.464Z        INFO    Need to update DB
2020-01-20T19:11:13.464Z        INFO    Downloading DB...
2020-01-20T19:11:17.642Z        INFO    Reopening DB...
2020-01-20T19:11:19.573Z        FATAL   error in image scan: failed to scan the image: failed to analyze OS: Unknown OS
```
