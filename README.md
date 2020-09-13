# Prometheus

Prometheus, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~171MB)

Security scanning using Clair
```
clair-scanner secureimages/prometheus:2.21.0-alpine-3.12.0
2020/09/13 07:06:11 [INFO] ▶ Start clair-scanner
2020/09/13 07:06:12 [INFO] ▶ Server listening on port 9279
2020/09/13 07:06:12 [INFO] ▶ Analyzing 31609b718dd2bed92b93b1ab00c0ff67419a3121d0144bef0dc6ca49718820a7
2020/09/13 07:06:13 [INFO] ▶ Analyzing dc5cf27b616da2aa9ce49ab04e5773fa4f8116b8dfec4977e50b104d866b8d0f
2020/09/13 07:06:13 [INFO] ▶ Analyzing e463a3788735d88d97b1a80d275ac28a69f7ae4b73aa71c8ef48088d63b8fc17
2020/09/13 07:06:13 [INFO] ▶ Analyzing faf5c54a80737b382f7966442372f1f8eb93f1ca8537a15276ff3d204386cc1c
2020/09/13 07:06:13 [INFO] ▶ Image [secureimages/prometheus:2.21.0-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.11.0 --no-progress secureimages/prometheus:2.21.0-alpine-3.12.0
2020-09-13T07:06:23.131Z        INFO    Need to update DB
2020-09-13T07:06:23.131Z        INFO    Downloading DB...
2020-09-13T07:06:29.641Z        INFO    Detecting Alpine vulnerabilities...

secureimages/prometheus:2.21.0-alpine-3.12.0 (alpine 3.12.0)
============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~168MB)

[https://hub.docker.com/r/prom/prometheus](https://hub.docker.com/r/prom/prometheus)
```
docker pull prom/prometheus:v2.21.0
```

Security scanning using Clair
```
clair-scanner prom/prometheus:v2.21.0
2020/09/13 07:06:47 [INFO] ▶ Start clair-scanner
2020/09/13 07:06:49 [INFO] ▶ Server listening on port 9279
2020/09/13 07:06:49 [INFO] ▶ Analyzing e190ccde9304b67c2ab7e688bbd97bf481172235a7261235ba4ae98e7b037e46
2020/09/13 07:06:49 [INFO] ▶ Analyzing e4023a9eb3999a69f0f67a2f279eec84f03ed4839fc442c4dec014a278ac45a9
2020/09/13 07:06:49 [INFO] ▶ Analyzing ff86bd73d5d05da3a9de94f3f2041a37eca3d2de8c5918169be39851e9022b44
2020/09/13 07:06:49 [INFO] ▶ Analyzing 43d4ab677072c0dc0e5ac7829bfeb1dd6db8ff4af1321e8e5b1ecd27f82ef850
2020/09/13 07:06:49 [INFO] ▶ Analyzing 280ca777ec08dd808780e1761e7875f4877c66a1b95d282e865d06dbdbf49d91
2020/09/13 07:06:49 [INFO] ▶ Analyzing cec46d760eb239963f8673a64af6e9af149368ebf0db13ee9572dbbcec865699
2020/09/13 07:06:49 [INFO] ▶ Analyzing 665787c77dd8754ac39d25a33dd03625f43865025ed8974d2479f88657c3971b
2020/09/13 07:06:49 [INFO] ▶ Analyzing 9bbeb58f92fed7c59116361c55f5d349e8c1de9d1cdb6ac843a4fd65aec03c58
2020/09/13 07:06:49 [INFO] ▶ Analyzing bab869216ead77ff05294b11fd8a3b56850b0cbe6204f102dd78a7c0774ab824
2020/09/13 07:06:49 [INFO] ▶ Analyzing bd671e34868a772f7273720cac54ce37bf3886b220655b20e402f1a86609fa37
2020/09/13 07:06:49 [INFO] ▶ Analyzing 0214f1498da7f7576c1dc30f46b97699bed5e3a66a445831ba6af117a19f7299
2020/09/13 07:06:49 [INFO] ▶ Analyzing 5b019f5d46396de22c15495c814288c889ad36b03d1133e1c391463c6d0b36ed
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.11.0 --no-progress prom/prometheus:v2.21.0
2020-09-13T07:06:56.387Z        INFO    Need to update DB
2020-09-13T07:06:56.387Z        INFO    Downloading DB...
2020-09-13T07:07:03.909Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
```
