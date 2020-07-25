# Prometheus

Prometheus, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~145MB)

Security scanning using Clair
```
clair-scanner secureimages/prometheus:2.19.3-alpine-3.12.0
2020/07/25 11:44:25 [INFO] ▶ Start clair-scanner
2020/07/25 11:44:26 [INFO] ▶ Server listening on port 9279
2020/07/25 11:44:26 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/07/25 11:44:27 [INFO] ▶ Analyzing fa5e546794390b9a8400242f4ca581a90fb5f8c44184f92c2c9936bf8a876bc2
2020/07/25 11:44:27 [INFO] ▶ Analyzing 291baddb4a7779e85c574029e24283e0c59b32f521b29a31ec513f46b573453e
2020/07/25 11:44:27 [INFO] ▶ Analyzing 8ae7bd230a1cae3d0515c57d201a9c2985717c941e4a41cc8283346f776a2cc7
2020/07/25 11:44:28 [INFO] ▶ Image [secureimages/prometheus:2.19.3-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.2 --no-progress secureimages/prometheus:2.19.3-alpine-3.12.0
2020-07-25T08:44:33.291Z        INFO    Need to update DB
2020-07-25T08:44:33.291Z        INFO    Downloading DB...
2020-07-25T08:44:39.861Z        INFO    Detecting Alpine vulnerabilities...

secureimages/prometheus:2.19.3-alpine-3.12.0 (alpine 3.12.0)
============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~142MB)

[https://hub.docker.com/r/prom/prometheus](https://hub.docker.com/r/prom/prometheus)
```
docker pull prom/prometheus:v2.19.3
```

Security scanning using Clair
```
clair-scanner prom/prometheus:v2.19.3
2020/07/25 11:44:44 [INFO] ▶ Start clair-scanner
2020/07/25 11:44:47 [INFO] ▶ Server listening on port 9279
2020/07/25 11:44:47 [INFO] ▶ Analyzing 63507318ac55546c3f2664b7aec630e2c96c15b0a8136e2be817d1c81b22f41f
2020/07/25 11:44:47 [INFO] ▶ Analyzing fb3f20436e57c5b4f818efe924255238b32f7867c491f90389a4950532b0395f
2020/07/25 11:44:47 [INFO] ▶ Analyzing 77ef7cf7d78fcc7f370ecaaddbfa4a66d51bcc3b171000ad9cc89f5989d8890c
2020/07/25 11:44:47 [INFO] ▶ Analyzing 2214d14eb104eeff51534294cceebc44862198c83dd5c1866b62dcefe4eee361
2020/07/25 11:44:47 [INFO] ▶ Analyzing b2d5158c809af87110d9cc79ce449c4df2c5edb23aa565756f9296b9245f5edd
2020/07/25 11:44:47 [INFO] ▶ Analyzing bc3e55ef9d1e6a721f8ebd31fcae48ab9c47b0c92a7095e600b38a48e7a8ea2c
2020/07/25 11:44:47 [INFO] ▶ Analyzing a9cefa9c019e1d5a76ba6d03e990abc37b85776d05140419d976f29a092ed538
2020/07/25 11:44:47 [INFO] ▶ Analyzing 2a7712613e883d55b4bc65540cb90e1a92a52a2850ac8acd0b7ea24ef1958ea9
2020/07/25 11:44:47 [INFO] ▶ Analyzing 8488463375ca270cf06c706cef22083b0f41e4b61b72ce7c566b2ea6eed6b521
2020/07/25 11:44:47 [INFO] ▶ Analyzing c2d4ba31a94acbbda3fd8ae5a1863d2369303f2e34193a4e7edd119a223cd765
2020/07/25 11:44:47 [INFO] ▶ Analyzing e18d614cc04c73b2678f0892f00fb136f2d4699bd291307a2dc0d9dc7d429352
2020/07/25 11:44:47 [INFO] ▶ Analyzing 17b7f1c0b8c1bc0e55216feb4d83ff7ddf5ab6b68383657a7dc9b1f2ee59ab5b
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.2 --no-progress prom/prometheus:v2.19.3
2020-07-25T08:44:53.696Z        INFO    Need to update DB
2020-07-25T08:44:53.696Z        INFO    Downloading DB...
2020-07-25T08:45:00.243Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
```
