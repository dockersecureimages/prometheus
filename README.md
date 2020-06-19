# Prometheus

Prometheus, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~145MB)

Security scanning using Clair
```
clair-scanner secureimages/prometheus:2.19.1-alpine-3.12.0
2020/06/19 18:16:31 [INFO] ▶ Start clair-scanner
2020/06/19 18:16:32 [INFO] ▶ Server listening on port 9279
2020/06/19 18:16:32 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/06/19 18:16:33 [INFO] ▶ Analyzing d50a085ec45d32b185bd6ea903a12e6c081cc999a3af0569367ec9d516caa9b9
2020/06/19 18:16:33 [INFO] ▶ Analyzing 1f70f3af7ee27bbb8527f8c61e74dd695953ccf36e4599b630cbf37fa6a67db0
2020/06/19 18:16:33 [INFO] ▶ Analyzing 3818a624dd07bc51db544198d5cd60f6e656537d6a5a219209e8f4f39f43fdf1
2020/06/19 18:16:33 [INFO] ▶ Image [secureimages/prometheus:2.19.1-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/prometheus:2.19.1-alpine-3.12.0
2020-06-19T15:16:47.663Z        INFO    Need to update DB
2020-06-19T15:16:47.663Z        INFO    Downloading DB...
2020-06-19T15:16:52.976Z        INFO    Detecting Alpine vulnerabilities...

secureimages/prometheus:2.19.1-alpine-3.12.0 (alpine 3.12.0)
============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~142MB)

[https://hub.docker.com/r/prom/prometheus](https://hub.docker.com/r/prom/prometheus)
```
docker pull prom/prometheus:v2.19.1
```

Security scanning using Clair
```
clair-scanner prom/prometheus:v2.19.1
2020/06/19 18:17:04 [INFO] ▶ Start clair-scanner
2020/06/19 18:17:06 [INFO] ▶ Server listening on port 9279
2020/06/19 18:17:06 [INFO] ▶ Analyzing 667676fde0639ebeb24e821cffbc240bb254c45c09d8c7d737f23b9fbfe68391
2020/06/19 18:17:06 [INFO] ▶ Analyzing 88a46c70cad3e63727733abeb37ff75c991e33e537ea7917cfbf694d45c34e24
2020/06/19 18:17:06 [INFO] ▶ Analyzing a7e01cc5c61fcdfa13c89c6b1cd86cfacef5bcb734503086e9d6abd27a93aa6c
2020/06/19 18:17:06 [INFO] ▶ Analyzing 0b820f854a893652014a2c0e9bf50cdb3732e3ba46805bf649ec11f35064097e
2020/06/19 18:17:06 [INFO] ▶ Analyzing 4992a5c56e324b50ac356cfb500295c856ec344c2c42e5e5e558e93d4ece0f82
2020/06/19 18:17:06 [INFO] ▶ Analyzing 55c49e251f98e8b269432668619be1edc6986c591461ee4100f796d787b86da9
2020/06/19 18:17:06 [INFO] ▶ Analyzing 452d85a8e06f12dae4be840078bb2173fd8874f1a79e535ca169e87ad788372c
2020/06/19 18:17:06 [INFO] ▶ Analyzing 4789c65c2e9aa7603f3e74660fc80a77210eb88509191c4425c88b74b5af84de
2020/06/19 18:17:06 [INFO] ▶ Analyzing cdaf9a5a492648e57f9b108708ce2fe16a4684629e44e2aba2ee04c0b7641906
2020/06/19 18:17:06 [INFO] ▶ Analyzing d22de401d727a326a6b28ba80412ea6a31fee5a84c37afde5edbfd7e3bebb9b7
2020/06/19 18:17:06 [INFO] ▶ Analyzing a52d3e5a2968486260da1034ced95ebdfb9cf8377c7cef8bc9029be607848a41
2020/06/19 18:17:06 [INFO] ▶ Analyzing cb78bec8443e519045467ad943d5bd5fc49e3b15b80e00fc11dc875089364598
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress prom/prometheus:v2.19.1
2020-06-19T15:17:10.677Z        INFO    Need to update DB
2020-06-19T15:17:10.677Z        INFO    Downloading DB...
2020-06-19T15:17:18.030Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
```
