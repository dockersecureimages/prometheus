# Prometheus

Prometheus, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~145MB)

Security scanning using Clair
```
clair-scanner secureimages/prometheus:2.19.0-alpine-3.12.0
2020/06/11 12:01:01 [INFO] ▶ Start clair-scanner
2020/06/11 12:01:03 [INFO] ▶ Server listening on port 9279
2020/06/11 12:01:03 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/06/11 12:01:03 [INFO] ▶ Analyzing 2cb6678b757967dd759ac083385010470f34d4ea9393a133c18bf4274a374c0a
2020/06/11 12:01:03 [INFO] ▶ Analyzing be2913159cb0af181960e58b108786b2ba6c4967adcff03c5daf85368140bc23
2020/06/11 12:01:03 [INFO] ▶ Analyzing 121ea8af7af19d4960a54fba6467bb54eda07d3d40f552e78845eacb914c55a3
2020/06/11 12:01:03 [INFO] ▶ Image [secureimages/prometheus:2.19.0-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/prometheus:2.19.0-alpine-3.12.0
2020-06-11T09:03:07.456Z        INFO    Need to update DB
2020-06-11T09:03:07.456Z        INFO    Downloading DB...
2020-06-11T09:03:13.086Z        INFO    Detecting Alpine vulnerabilities...

secureimages/prometheus:2.19.0-alpine-3.12.0 (alpine 3.12.0)
============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~142MB)

[https://hub.docker.com/r/prom/prometheus](https://hub.docker.com/r/prom/prometheus)
```
docker pull prom/prometheus:v2.19.0
```

Security scanning using Clair
```
clair-scanner prom/prometheus:v2.19.0
2020/06/11 12:03:24 [INFO] ▶ Start clair-scanner
2020/06/11 12:03:28 [INFO] ▶ Server listening on port 9279
2020/06/11 12:03:28 [INFO] ▶ Analyzing 667676fde0639ebeb24e821cffbc240bb254c45c09d8c7d737f23b9fbfe68391
2020/06/11 12:03:28 [INFO] ▶ Analyzing 88a46c70cad3e63727733abeb37ff75c991e33e537ea7917cfbf694d45c34e24
2020/06/11 12:03:28 [INFO] ▶ Analyzing 192653a4e922c60e436c3a34255ad7a71087d7acfa9cd4d550b6a5946ad3c3ac
2020/06/11 12:03:28 [INFO] ▶ Analyzing 37a39c7394e8fd9304fc6952b6f1e9d6404c9d35f24f98d51842ae71747222e5
2020/06/11 12:03:28 [INFO] ▶ Analyzing 96456e65a901094569ded0936c949daa665f10c1c8b90004487e92560308f8b0
2020/06/11 12:03:28 [INFO] ▶ Analyzing 633f9a51e218f83354475f4b2f1ef9a1a3a673888e120154aba95cb9c046631a
2020/06/11 12:03:28 [INFO] ▶ Analyzing f2ab234a821e8b4ab6ca7850848167525454d72615c98d2ae8856aa832c73df5
2020/06/11 12:03:28 [INFO] ▶ Analyzing 93dc68f8fa2adc2dfe0ea925e8f6b75d3323f36e1bb14c05af34171baceacff6
2020/06/11 12:03:28 [INFO] ▶ Analyzing 169d9fd8734a036288d7c4bfdf50c9bcab59035da8be5dd4fc38a99796d423a4
2020/06/11 12:03:28 [INFO] ▶ Analyzing 28bb558b2ea7289b95ec33f75f1d851bdfa537b28939216851c00fb549c484c2
2020/06/11 12:03:28 [INFO] ▶ Analyzing 54ed5256ffe28ac882ee5cec44c0bca7115c0d32acf9f492e06acaf4b50c8a3f
2020/06/11 12:03:28 [INFO] ▶ Analyzing 5d21f16ce97ad8024d510484ab15514c43a4be3a9d82914fe0e7cd0ba0d9c6bb
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress prom/prometheus:v2.19.0
2020-06-11T09:03:46.722Z        INFO    Need to update DB
2020-06-11T09:03:46.722Z        INFO    Downloading DB...
2020-06-11T09:03:55.514Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
```
