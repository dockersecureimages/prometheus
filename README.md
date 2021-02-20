# Prometheus

Prometheus, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~178MB)

Security scanning using Clair
```
clair-scanner secureimages/prometheus:2.25.0-alpine-3.13.2
2021/02/20 10:52:04 [INFO] ▶ Start clair-scanner
2021/02/20 10:52:05 [INFO] ▶ Server listening on port 9279
2021/02/20 10:52:05 [INFO] ▶ Analyzing b73bac2fe5a7b9d1abcbf0138798281e20b11e59b4605b104d38e914fa35b4d2
2021/02/20 10:52:05 [INFO] ▶ Analyzing 34ce78f708b6e9b955e34dc6957b1fa884bf8e3df8818e46f4b027db3ee89a76
2021/02/20 10:52:06 [INFO] ▶ Analyzing 9f2d2f627350fd14ef1106702495b289434438fd4d78e718ad6040dee6426883
2021/02/20 10:52:06 [INFO] ▶ Analyzing adceae9eb3ed255e330c1a57da598fa0ceece01c46aadde7fb2db32c8b7d0eeb
2021/02/20 10:52:06 [WARN] ▶ Image [secureimages/prometheus:2.25.0-alpine-3.13.2] contains 1 total vulnerabilities
2021/02/20 10:52:06 [ERRO] ▶ Image [secureimages/prometheus:2.25.0-alpine-3.13.2] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/prometheus:2.25.0-alpine-3.13.2
2021-02-20T10:52:12.874Z        INFO    Need to update DB
2021-02-20T10:52:12.874Z        INFO    Downloading DB...
2021-02-20T10:52:17.630Z        INFO    Detecting Alpine vulnerabilities...
2021-02-20T10:52:17.632Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/prometheus:2.25.0-alpine-3.13.2 (alpine 3.13.2)
============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~175MB)

[https://hub.docker.com/r/prom/prometheus](https://hub.docker.com/r/prom/prometheus)
```
docker pull prom/prometheus:v2.25.0
```

Security scanning using Clair
```
clair-scanner prom/prometheus:v2.25.0
2021/02/20 10:52:21 [INFO] ▶ Start clair-scanner
2021/02/20 10:52:25 [INFO] ▶ Server listening on port 9279
2021/02/20 10:52:25 [INFO] ▶ Analyzing 7bdee6d751026e97a21a9dd2e3ddb56438217ea83550bfca4c7c9ea51b3bca82
2021/02/20 10:52:25 [INFO] ▶ Analyzing ea26cb5923a42e1594036a3441f8ea474f389d87ee8e8809643e197280e50106
2021/02/20 10:52:25 [INFO] ▶ Analyzing bd16d5661c9f03942026c41f242dfd08b8d30cec8298202ee4bdba1fc72b6195
2021/02/20 10:52:25 [INFO] ▶ Analyzing b510eb0e755a25d251e321d7d3cb2b9f3f27ecf6b4cddaf6e483aed4f821697d
2021/02/20 10:52:25 [INFO] ▶ Analyzing a2c0c858fcb240aa51e799490fae4a8a67544051613dc5083c68481b5e0b10af
2021/02/20 10:52:25 [INFO] ▶ Analyzing 8ab29c397b709a18a4021109222918938aec558e4ad47c96a6297548ba71d575
2021/02/20 10:52:25 [INFO] ▶ Analyzing cb3319ec3236c5b2fa195b54b2108dfe0737fea76d8ef474e68ba69f527781c3
2021/02/20 10:52:25 [INFO] ▶ Analyzing 488b9cecadd628c632afdbc82b43719b48e23b1862e5258fd0766cd3bdee5d58
2021/02/20 10:52:25 [INFO] ▶ Analyzing 56a2cb7578321b672369df55f892db5169f1157c365e871487d453fd6a47221b
2021/02/20 10:52:25 [INFO] ▶ Analyzing 498a14513ec274c47b819e5d676dac55dbf9074e60a12b1609f2a361a7ceebcd
2021/02/20 10:52:25 [INFO] ▶ Analyzing 32c3608a5f1b20d224805977feecfb8356784d0e10ce3ffdfc68837fdea63e65
2021/02/20 10:52:25 [INFO] ▶ Analyzing 7a165961f4edc9d7c56c9bf70e76bd93c451b3932f15e7d1acc0f0b3729c7a3e
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress prom/prometheus:v2.25.0
2021-02-20T10:52:27.499Z        INFO    Need to update DB
2021-02-20T10:52:27.499Z        INFO    Downloading DB...
2021-02-20T10:52:32.773Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
2021-02-20T10:52:32.773Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected
```
