# Prometheus

Prometheus, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~148MB)

Security scanning using Clair
```
clair-scanner secureimages/prometheus:2.20.1-alpine-3.12.0
2020/08/11 17:09:29 [INFO] ▶ Start clair-scanner
2020/08/11 17:09:30 [INFO] ▶ Server listening on port 9279
2020/08/11 17:09:30 [INFO] ▶ Analyzing 31609b718dd2bed92b93b1ab00c0ff67419a3121d0144bef0dc6ca49718820a7
2020/08/11 17:09:30 [INFO] ▶ Analyzing 0bd17557aa6d5cb118498f946fe729b1c93b50882c112411f7ccda75258176c5
2020/08/11 17:09:31 [INFO] ▶ Analyzing dc7dded61d9866702181787a93708f72d48a6ef6d4ed1b33a8054f41c986a8ab
2020/08/11 17:09:31 [INFO] ▶ Analyzing 7253d104ec0c1ebb0344dc0a0c82fb7db0f950b7d04c2f80dcf60503dba61ab3
2020/08/11 17:09:31 [INFO] ▶ Image [secureimages/prometheus:2.20.1-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.10.2 --no-progress secureimages/prometheus:2.20.1-alpine-3.12.0
2020-08-11T17:09:51.341Z        INFO    Need to update DB
2020-08-11T17:09:51.341Z        INFO    Downloading DB...
2020-08-11T17:09:57.058Z        INFO    Detecting Alpine vulnerabilities...

secureimages/prometheus:2.20.1-alpine-3.12.0 (alpine 3.12.0)
============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~145MB)

[https://hub.docker.com/r/prom/prometheus](https://hub.docker.com/r/prom/prometheus)
```
docker pull prom/prometheus:v2.20.1
```

Security scanning using Clair
```
clair-scanner prom/prometheus:v2.20.1
2020/08/11 17:10:08 [INFO] ▶ Start clair-scanner
2020/08/11 17:10:10 [INFO] ▶ Server listening on port 9279
2020/08/11 17:10:10 [INFO] ▶ Analyzing e190ccde9304b67c2ab7e688bbd97bf481172235a7261235ba4ae98e7b037e46
2020/08/11 17:10:10 [INFO] ▶ Analyzing e4023a9eb3999a69f0f67a2f279eec84f03ed4839fc442c4dec014a278ac45a9
2020/08/11 17:10:10 [INFO] ▶ Analyzing c32127ad05030cac4d6ea5578db665980ddd3cf767ccf92c8ec8dc70b29682a7
2020/08/11 17:10:10 [INFO] ▶ Analyzing 96c337b42e9e86577885bf88bd13eb8318aa6b50e17b569902af8c72164d1443
2020/08/11 17:10:10 [INFO] ▶ Analyzing 9bb33563fd96c50ccf5129d13924ba9b1471ad601ea703ebec997881f3fbd7ff
2020/08/11 17:10:10 [INFO] ▶ Analyzing 57569c7cda09c950b20c294671d1e50f42544fc57fc5cd6b9961274c466f75b0
2020/08/11 17:10:10 [INFO] ▶ Analyzing ada26e2de909005141f7a3c9c35a5be8798b696a6a58b62e17943848ff8b0d9e
2020/08/11 17:10:10 [INFO] ▶ Analyzing 64778a7859cb451be1bd1d6390f0b3aaa0ca3ad1fc1701360797ad22473b3f0b
2020/08/11 17:10:10 [INFO] ▶ Analyzing 77d5e279a99a2a55080503f804e5ded6bf355a05f8790f4c9951f90622a62ac1
2020/08/11 17:10:10 [INFO] ▶ Analyzing e77c69393c3dc848f0b428f42288f8d80d701def0fd061f16e77fe17b14b302f
2020/08/11 17:10:10 [INFO] ▶ Analyzing 70957fcbfe4ea758c6c0300295e1646735362a57b0ce8c110170334c879a601c
2020/08/11 17:10:10 [INFO] ▶ Analyzing f2112ce6f3f5dc4d4e8f80bcaad4f14a7e627e2a80dd1352f7d11a1adfded2ac
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.10.2 --no-progress prom/prometheus:v2.20.1
2020-08-11T17:10:15.389Z        INFO    Need to update DB
2020-08-11T17:10:15.389Z        INFO    Downloading DB...
2020-08-11T17:10:21.598Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
```
