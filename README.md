# Prometheus

Prometheus, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~175MB)

Security scanning using Clair
```
clair-scanner secureimages/prometheus:2.24.0-alpine-3.12.3
2021/01/11 09:05:32 [INFO] ▶ Start clair-scanner
2021/01/11 09:05:33 [INFO] ▶ Server listening on port 9279
2021/01/11 09:05:33 [INFO] ▶ Analyzing 239a994d90a30d28d70001f62415dabc8636df0ebb561fe4d6c1b4b1d4a6cbcf
2021/01/11 09:05:34 [INFO] ▶ Analyzing a70f4a18dbdcd7f8a8bc81865f728780754a223d4b337cc899872bff413aae66
2021/01/11 09:05:34 [INFO] ▶ Analyzing 8c3360e9e0e3bed1aa6ab6e747e3455a7aeadfe0660c809b9cfd08e9c44010ff
2021/01/11 09:05:34 [INFO] ▶ Analyzing 702d130df2478a24c1c3299174728ecc81ba8a7b45be12432eb9389a4d2cb2b3
2021/01/11 09:05:35 [INFO] ▶ Image [secureimages/prometheus:2.24.0-alpine-3.12.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.15.0 --no-progress secureimages/prometheus:2.24.0-alpine-3.12.3
2021-01-11T09:05:43.900Z        INFO    Need to update DB
2021-01-11T09:05:43.900Z        INFO    Downloading DB...
2021-01-11T09:05:50.463Z        INFO    Detecting Alpine vulnerabilities...
2021-01-11T09:05:50.464Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/prometheus:2.24.0-alpine-3.12.3 (alpine 3.12.3)
============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~173MB)

[https://hub.docker.com/r/prom/prometheus](https://hub.docker.com/r/prom/prometheus)
```
docker pull prom/prometheus:v2.24.0
```

Security scanning using Clair
```
clair-scanner prom/prometheus:v2.24.0
2021/01/11 09:06:26 [INFO] ▶ Start clair-scanner
2021/01/11 09:06:29 [INFO] ▶ Server listening on port 9279
2021/01/11 09:06:29 [INFO] ▶ Analyzing 352140653fc205ae836606482b8f027cb59c03b775c570bca4a1f5d8b3f35223
2021/01/11 09:06:29 [INFO] ▶ Analyzing f43e75f60d0249cc4968d9afca6446d0a97d309ad897f0de2178c87a0e5cda4c
2021/01/11 09:06:29 [INFO] ▶ Analyzing 02ad543a196a3a2152ea098fd6d65e6397845f17befeadd13c5c18157a3fb3ca
2021/01/11 09:06:29 [INFO] ▶ Analyzing 8e37acee1ae961074dbbfdd3a9344e82414353944437cd03b6adb944489ff95b
2021/01/11 09:06:30 [INFO] ▶ Analyzing 061cd54e094bee497d7808d89f8bbc46d750370b0abe05cd8e3367535a192ec8
2021/01/11 09:06:30 [INFO] ▶ Analyzing 8e9f058550ea445e54f6bd15e6ad8c344ba5b8b9ca0913ddef9f950e5676c194
2021/01/11 09:06:30 [INFO] ▶ Analyzing a4fca5344349614d6ee665e0ae4b08ba1a1e26a823ab7e10386266d2b520db74
2021/01/11 09:06:30 [INFO] ▶ Analyzing 301b6752b6bf510479276722f1bfb8b765a574eea2fb88d0d4b815913b6460e9
2021/01/11 09:06:30 [INFO] ▶ Analyzing 9459cde4eac65eebddd726c9fdb94619f1daee91f46b8a3f8489248f7b1a527d
2021/01/11 09:06:30 [INFO] ▶ Analyzing c7b9de04005e4280fddb88b97e0de1a71ef23f98c4f6e0810640901a02c738da
2021/01/11 09:06:30 [INFO] ▶ Analyzing e8a26fb1ce64c4a6e143ae50f288cddb7109737ec3b031255d24825b9a097428
2021/01/11 09:06:30 [INFO] ▶ Analyzing 56ca9fdb35cd6e3e27c313682fab484eddac37dd9f15c16f2fbaba9f6b28792e
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.15.0 --no-progress prom/prometheus:v2.24.0
2021-01-11T09:06:43.802Z        INFO    Need to update DB
2021-01-11T09:06:43.802Z        INFO    Downloading DB...
2021-01-11T09:06:51.092Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
2021-01-11T09:06:51.093Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected
```
