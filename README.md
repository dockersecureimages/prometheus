# Prometheus

Prometheus, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~178MB)

Security scanning using Clair
```
clair-scanner secureimages/prometheus:2.25.2-alpine-3.13.3
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
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/prometheus:2.25.2-alpine-3.13.3
2021-03-31T08:44:12.482Z        INFO    Need to update DB
2021-03-31T08:44:12.482Z        INFO    Downloading DB...
2021-03-31T08:44:17.786Z        INFO    Detecting Alpine vulnerabilities...
2021-03-31T08:44:17.787Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/prometheus:2.25.2-alpine-3.13.3 (alpine 3.13.3)
============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~175MB)

[https://hub.docker.com/r/prom/prometheus](https://hub.docker.com/r/prom/prometheus)
```
docker pull prom/prometheus:v2.25.2
```

Security scanning using Clair
```
2021/03/31 08:44:26 [INFO] ▶ Start clair-scanner
2021/03/31 08:44:28 [INFO] ▶ Server listening on port 9279
2021/03/31 08:44:28 [INFO] ▶ Analyzing 7bdee6d751026e97a21a9dd2e3ddb56438217ea83550bfca4c7c9ea51b3bca82
2021/03/31 08:44:28 [INFO] ▶ Analyzing ea26cb5923a42e1594036a3441f8ea474f389d87ee8e8809643e197280e50106
2021/03/31 08:44:28 [INFO] ▶ Analyzing 0b6266d7b2c96586984581b49b0f405824301a930087e1847a3991459d3f001b
2021/03/31 08:44:28 [INFO] ▶ Analyzing 9e62358d5bc514c7534f6c926d38d00800e0436efeb8adb445eb9a7d206188f3
2021/03/31 08:44:28 [INFO] ▶ Analyzing 00b522b3a21753cd3b62e86dbf96bc2b8111265acb0807738da84be4bc4ab5a4
2021/03/31 08:44:28 [INFO] ▶ Analyzing 50f2b5c7098cd30213d2b45d8e721d3ab284031c0f12588c28474272adb4d8c0
2021/03/31 08:44:28 [INFO] ▶ Analyzing b0a47a344e069447fabb46d1dfcbeae5c12b4f02a962b1ad6ea6fa2cc954f367
2021/03/31 08:44:28 [INFO] ▶ Analyzing e9257c1b71c78e883963c41882e9067e8cfd62cf5255ee3d6920a43959f8cc81
2021/03/31 08:44:28 [INFO] ▶ Analyzing 675a9caad19e1fcc45bb1c6513020f8bbbba52ec701741995ef0368849f20ac5
2021/03/31 08:44:28 [INFO] ▶ Analyzing 3e6f8a7780b2207d0029e4c2dda5e0fe7d11a4ad7709fd23c78d23b234fb6e8d
2021/03/31 08:44:28 [INFO] ▶ Analyzing 3cac43b77e932a7dc9304635f63f09cdbce922adc5063dabf20b1850cb1ed710
2021/03/31 08:44:28 [INFO] ▶ Analyzing 807d8a6e8cf2fb025404d180fa53a634d522bfae1301e0a5c0e9acbe0e07d756
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress prom/prometheus:v2.25.2
2021-03-31T08:44:32.015Z        INFO    Need to update DB
2021-03-31T08:44:32.015Z        INFO    Downloading DB...
2021-03-31T08:44:37.541Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
2021-03-31T08:44:37.541Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected
```
