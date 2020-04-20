# Prometheus

Prometheus, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/prometheus:2.17.2-alpine-3.11.5
2020/04/20 14:51:08 [INFO] ▶ Start clair-scanner
2020/04/20 14:51:09 [INFO] ▶ Server listening on port 9279
2020/04/20 14:51:09 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/04/20 14:51:10 [INFO] ▶ Analyzing 521d7220d603b8dd8c7b3f7d191cd9f416b72d2b87d368e67ec5df3bb2f41e5c
2020/04/20 14:51:10 [INFO] ▶ Analyzing 7b9ed16527552e6fb2a682f374173f41cf82cd86847a5dd3b7f85f493b99778d
2020/04/20 14:51:10 [INFO] ▶ Analyzing b57a9e27fd99d003ff21694c05fe6df8ca5e7d1486a91c39904280321d543a03
2020/04/20 14:51:11 [INFO] ▶ Image [secureimages/prometheus:2.17.2-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/prometheus:2.17.2-alpine-3.11.5
2020-04-20T11:51:15.099Z        INFO    Need to update DB
2020-04-20T11:51:15.099Z        INFO    Downloading DB...
2020-04-20T11:51:21.591Z        INFO    Detecting Alpine vulnerabilities...

secureimages/prometheus:2.17.2-alpine-3.11.5 (alpine 3.11.5)
============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/prom/prometheus](https://hub.docker.com/r/prom/prometheus)
```
docker pull prom/prometheus:v2.17.2
```

Security scanning using Clair
```
clair-scanner prom/prometheus:v2.17.2
2020/04/20 14:51:28 [INFO] ▶ Start clair-scanner
2020/04/20 14:51:30 [INFO] ▶ Server listening on port 9279
2020/04/20 14:51:30 [INFO] ▶ Analyzing 667676fde0639ebeb24e821cffbc240bb254c45c09d8c7d737f23b9fbfe68391
2020/04/20 14:51:30 [INFO] ▶ Analyzing 88a46c70cad3e63727733abeb37ff75c991e33e537ea7917cfbf694d45c34e24
2020/04/20 14:51:30 [INFO] ▶ Analyzing f8bb5286c726234abf58a2e6f35400deb2742e687e3b839843ac7579439be585
2020/04/20 14:51:30 [INFO] ▶ Analyzing 43e897c146e70c0f75cd1b2dcec618f4110e2ed89367d5d018a957c5912ecfcf
2020/04/20 14:51:30 [INFO] ▶ Analyzing 9a09d2ac7d35f3e9a4d02bcdc977b0b7b3a673e3fc7fca093753880e23644aa6
2020/04/20 14:51:30 [INFO] ▶ Analyzing f36d02b29cfa272d3be44b1c143b2ecbdf22111cb868fb2939b15447941668c8
2020/04/20 14:51:30 [INFO] ▶ Analyzing 4e3dc29ba2ed8b8b68ba766f6e23c16853f45c79e30567ee5c49f0da68ca7f2d
2020/04/20 14:51:30 [INFO] ▶ Analyzing f1b03193ae18f381a19841aafb9a797336415f94636b80f07b9e0632fb4ffef3
2020/04/20 14:51:30 [INFO] ▶ Analyzing 0ce267e79a0d393a7403ec13b97040a68110e14ef334c0865bcd0adeb4f16c13
2020/04/20 14:51:30 [INFO] ▶ Analyzing f2a534fbfec9feedb664446fb8ac8281e7ced04bfdf155ca9cd5c4d54068d814
2020/04/20 14:51:30 [INFO] ▶ Analyzing 24289e2149bb403eda8707217a609f524e42e46019701bcebecd23dfeea6ef23
2020/04/20 14:51:30 [INFO] ▶ Analyzing 692a37442b26b92bf6ac4d01f1a92fcceb1da29346197dcddbcc73bdca0e1fae
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress prom/prometheus:v2.17.2
2020-04-20T11:51:35.700Z        INFO    Need to update DB
2020-04-20T11:51:35.700Z        INFO    Downloading DB...
2020-04-20T11:51:47.892Z        FATAL   error in image scan: scan failed: failed to apply layers: unknown OS
```
