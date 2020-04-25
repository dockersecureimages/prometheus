# Prometheus

Prometheus, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~138MB)

Security scanning using Clair
```
clair-scanner secureimages/prometheus:2.17.2-alpine-3.11.6
2020/04/25 17:32:31 [INFO] ▶ Start clair-scanner
2020/04/25 17:32:32 [INFO] ▶ Server listening on port 9279
2020/04/25 17:32:32 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/04/25 17:32:32 [INFO] ▶ Analyzing 48def97da562898219f5e2b89db11186d1bb743f4900ca7fe2bb01fbd77df14d
2020/04/25 17:32:32 [INFO] ▶ Analyzing fd399ccff8bee50ce51bebd260ae2d7a9099692adb686f6c958b1c9622eac474
2020/04/25 17:32:32 [INFO] ▶ Analyzing c826db536a2d1f267f8840add8c1374934dbbcaa345458330aa2d314e72587bb
2020/04/25 17:32:32 [INFO] ▶ Image [secureimages/prometheus:2.17.2-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/prometheus:2.17.2-alpine-3.11.6
2020-04-25T14:32:39.063Z        INFO    Need to update DB
2020-04-25T14:32:39.063Z        INFO    Downloading DB...
2020-04-25T14:32:45.760Z        INFO    Detecting Alpine vulnerabilities...

secureimages/prometheus:2.17.2-alpine-3.11.6 (alpine 3.11.6)
============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~135MB)

[https://hub.docker.com/r/prom/prometheus](https://hub.docker.com/r/prom/prometheus)
```
docker pull prom/prometheus:v2.17.2
```

Security scanning using Clair
```
clair-scanner prom/prometheus:v2.17.2
2020/04/25 17:32:51 [INFO] ▶ Start clair-scanner
2020/04/25 17:32:54 [INFO] ▶ Server listening on port 9279
2020/04/25 17:32:54 [INFO] ▶ Analyzing 667676fde0639ebeb24e821cffbc240bb254c45c09d8c7d737f23b9fbfe68391
2020/04/25 17:32:54 [INFO] ▶ Analyzing 88a46c70cad3e63727733abeb37ff75c991e33e537ea7917cfbf694d45c34e24
2020/04/25 17:32:54 [INFO] ▶ Analyzing f8bb5286c726234abf58a2e6f35400deb2742e687e3b839843ac7579439be585
2020/04/25 17:32:54 [INFO] ▶ Analyzing 43e897c146e70c0f75cd1b2dcec618f4110e2ed89367d5d018a957c5912ecfcf
2020/04/25 17:32:54 [INFO] ▶ Analyzing 9a09d2ac7d35f3e9a4d02bcdc977b0b7b3a673e3fc7fca093753880e23644aa6
2020/04/25 17:32:54 [INFO] ▶ Analyzing f36d02b29cfa272d3be44b1c143b2ecbdf22111cb868fb2939b15447941668c8
2020/04/25 17:32:54 [INFO] ▶ Analyzing 4e3dc29ba2ed8b8b68ba766f6e23c16853f45c79e30567ee5c49f0da68ca7f2d
2020/04/25 17:32:54 [INFO] ▶ Analyzing f1b03193ae18f381a19841aafb9a797336415f94636b80f07b9e0632fb4ffef3
2020/04/25 17:32:54 [INFO] ▶ Analyzing 0ce267e79a0d393a7403ec13b97040a68110e14ef334c0865bcd0adeb4f16c13
2020/04/25 17:32:54 [INFO] ▶ Analyzing f2a534fbfec9feedb664446fb8ac8281e7ced04bfdf155ca9cd5c4d54068d814
2020/04/25 17:32:54 [INFO] ▶ Analyzing 24289e2149bb403eda8707217a609f524e42e46019701bcebecd23dfeea6ef23
2020/04/25 17:32:54 [INFO] ▶ Analyzing 692a37442b26b92bf6ac4d01f1a92fcceb1da29346197dcddbcc73bdca0e1fae
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress prom/prometheus:v2.17.2
2020-04-25T14:32:59.305Z        INFO    Need to update DB
2020-04-25T14:32:59.305Z        INFO    Downloading DB...
2020-04-25T14:33:06.409Z        FATAL   error in image scan: scan failed: failed to apply layers: unknown OS
```
