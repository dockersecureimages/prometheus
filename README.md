# Prometheus

Prometheus, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~172MB)

Security scanning using Clair
```
clair-scanner secureimages/prometheus:2.26.0-alpine-3.13.4
2021/03/31 08:44:02 [INFO] ▶ Start clair-scanner
2021/03/31 08:44:03 [INFO] ▶ Server listening on port 9279
2021/03/31 08:44:03 [INFO] ▶ Analyzing 7d89ae2c30338875fa3a10be99c984f80dac89b1527ef8115ca77d7fd8eeef92
2021/03/31 08:44:05 [INFO] ▶ Analyzing 9809f7ff96eb63169a120a4dd40ab535fd14f75ca268627c7041cf7a0e67a4b7
2021/03/31 08:44:06 [INFO] ▶ Analyzing 252e4dbcce5f7d4ea48d95c2ea9f64befc2a8c3dcdc4b08ed6ac6a880500376d
2021/03/31 08:44:06 [INFO] ▶ Analyzing b0fc983ac7229c922e2f6a06b16f44f7361c04ac21dab5c1e829daa86cb08abb
2021/03/31 08:44:06 [WARN] ▶ Image [secureimages/prometheus:2.25.2-alpine-3.13.3] contains 1 total vulnerabilities
2021/03/31 08:44:06 [ERRO] ▶ Image [secureimages/prometheus:2.25.2-alpine-3.13.3] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/prometheus:2.26.0-alpine-3.13.4
2021-03-31T08:44:12.482Z        INFO    Need to update DB
2021-03-31T08:44:12.482Z        INFO    Downloading DB...
2021-03-31T08:44:17.786Z        INFO    Detecting Alpine vulnerabilities...
2021-03-31T08:44:17.787Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/prometheus:2.25.2-alpine-3.13.3 (alpine 3.13.3)
============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~169MB)

[https://hub.docker.com/r/prom/prometheus](https://hub.docker.com/r/prom/prometheus)
```
docker pull prom/prometheus:v2.26.0
```

Security scanning using Clair
```
clair-scanner prom/prometheus:v2.26.0
2021/04/01 12:24:39 [INFO] ▶ Start clair-scanner
2021/04/01 12:24:41 [INFO] ▶ Server listening on port 9279
2021/04/01 12:24:41 [INFO] ▶ Analyzing 7bdee6d751026e97a21a9dd2e3ddb56438217ea83550bfca4c7c9ea51b3bca82
2021/04/01 12:24:41 [INFO] ▶ Analyzing ea26cb5923a42e1594036a3441f8ea474f389d87ee8e8809643e197280e50106
2021/04/01 12:24:41 [INFO] ▶ Analyzing 88ac1f4548f7d07e25f127775d8a79ef02b6e76592beea0aa40cb42f723210a6
2021/04/01 12:24:41 [INFO] ▶ Analyzing 4a19533ab43f7066cd885bfa8d3c8cd90ecbcd6c4cd8a6880307ddca5ea70632
2021/04/01 12:24:42 [INFO] ▶ Analyzing 4c62322374af09b6cebfa07467cf5f6dc358a27ff0a012f532f181f735ec54b2
2021/04/01 12:24:42 [INFO] ▶ Analyzing ba74d19e0546d98016cebc83817e9f1a0a9f77e3acb137a4f84a8ff39df646d7
2021/04/01 12:24:42 [INFO] ▶ Analyzing bce1c12a21d4baeffd148274bcce36d6175e9478a9af68dbc7af590676977d01
2021/04/01 12:24:42 [INFO] ▶ Analyzing 71f1e95f4d3d5ed5adc67913182f2c8cc9f8cb999cee2419d224a262f03b13a0
2021/04/01 12:24:42 [INFO] ▶ Analyzing edc221bf32387445a7a637c58a7d621ffb66b71f3621c224336e4902880a7e53
2021/04/01 12:24:42 [INFO] ▶ Analyzing a85572e6637da48aa499029011a4f8f3ded2502b9dd12d90624d4bce0b0d05ed
2021/04/01 12:24:42 [INFO] ▶ Analyzing 3233d2dbc978a0f224ddb768966a798671394b0fc473ba3caace3a78dfcea4bd
2021/04/01 12:24:42 [INFO] ▶ Analyzing 9e08312d2bb24ab9373f910d3e0fe9333af685f7b7e573fc3f3be634297dff2b
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress prom/prometheus:v2.26.0
2021-04-01T12:24:45.888Z        INFO    Need to update DB
2021-04-01T12:24:45.888Z        INFO    Downloading DB...
2021-04-01T12:24:50.106Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
2021-04-01T12:24:50.106Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

```
