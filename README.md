# Prometheus

Prometheus, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~172MB)

Security scanning using Clair
```
clair-scanner secureimages/prometheus:2.26.0-alpine-3.13.5
2021/04/16 08:02:51 [INFO] ▶ Start clair-scanner
2021/04/16 08:02:53 [INFO] ▶ Server listening on port 9279
2021/04/16 08:02:53 [INFO] ▶ Analyzing d09376239d873ace0c02b1b53834f0fe3167a652a8fc436465db0171eb639b61
2021/04/16 08:02:53 [INFO] ▶ Analyzing 2a0920aa5da23626119c228220f1a788de2921b8fc07c03bd82510c22ea8ebbe
2021/04/16 08:02:53 [INFO] ▶ Analyzing f5ee4f1aa85bb2a320e744693e8590f6085204dbc55c9a5c95747e1f4791fc2d
2021/04/16 08:02:53 [INFO] ▶ Analyzing 9d7a2455278d8cdbc3225669904dfbaa0fb5cb1f425d70b7e945108b06cf2eda
2021/04/16 08:02:53 [WARN] ▶ Image [secureimages/prometheus:2.26.0-alpine-3.13.5] contains 1 total vulnerabilities
2021/04/16 08:02:53 [ERRO] ▶ Image [secureimages/prometheus:2.26.0-alpine-3.13.5] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/prometheus:2.26.0-alpine-3.13.5
2021-04-16T08:02:55.113Z        INFO    Need to update DB
2021-04-16T08:02:55.113Z        INFO    Downloading DB...
2021-04-16T08:02:59.290Z        INFO    Detecting Alpine vulnerabilities...
2021-04-16T08:02:59.291Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/prometheus:2.26.0-alpine-3.13.5 (alpine 3.13.5)
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
2021/04/16 08:03:05 [INFO] ▶ Start clair-scanner
2021/04/16 08:03:06 [INFO] ▶ Server listening on port 9279
2021/04/16 08:03:06 [INFO] ▶ Analyzing 7bdee6d751026e97a21a9dd2e3ddb56438217ea83550bfca4c7c9ea51b3bca82
2021/04/16 08:03:06 [INFO] ▶ Analyzing ea26cb5923a42e1594036a3441f8ea474f389d87ee8e8809643e197280e50106
2021/04/16 08:03:06 [INFO] ▶ Analyzing 88ac1f4548f7d07e25f127775d8a79ef02b6e76592beea0aa40cb42f723210a6
2021/04/16 08:03:06 [INFO] ▶ Analyzing 4a19533ab43f7066cd885bfa8d3c8cd90ecbcd6c4cd8a6880307ddca5ea70632
2021/04/16 08:03:07 [INFO] ▶ Analyzing 4c62322374af09b6cebfa07467cf5f6dc358a27ff0a012f532f181f735ec54b2
2021/04/16 08:03:07 [INFO] ▶ Analyzing ba74d19e0546d98016cebc83817e9f1a0a9f77e3acb137a4f84a8ff39df646d7
2021/04/16 08:03:07 [INFO] ▶ Analyzing bce1c12a21d4baeffd148274bcce36d6175e9478a9af68dbc7af590676977d01
2021/04/16 08:03:07 [INFO] ▶ Analyzing 71f1e95f4d3d5ed5adc67913182f2c8cc9f8cb999cee2419d224a262f03b13a0
2021/04/16 08:03:07 [INFO] ▶ Analyzing edc221bf32387445a7a637c58a7d621ffb66b71f3621c224336e4902880a7e53
2021/04/16 08:03:07 [INFO] ▶ Analyzing a85572e6637da48aa499029011a4f8f3ded2502b9dd12d90624d4bce0b0d05ed
2021/04/16 08:03:07 [INFO] ▶ Analyzing 3233d2dbc978a0f224ddb768966a798671394b0fc473ba3caace3a78dfcea4bd
2021/04/16 08:03:07 [INFO] ▶ Analyzing 9e08312d2bb24ab9373f910d3e0fe9333af685f7b7e573fc3f3be634297dff2b
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress prom/prometheus:v2.26.0
2021-04-16T08:03:10.862Z        INFO    Need to update DB
2021-04-16T08:03:10.862Z        INFO    Downloading DB...
2021-04-16T08:03:14.723Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
2021-04-16T08:03:14.723Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected
```
