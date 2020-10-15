# Prometheus

Prometheus, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~171MB)

Security scanning using Clair
```
clair-scanner secureimages/prometheus:2.22.0-alpine-3.12.0
2020/10/15 19:12:52 [INFO] ▶ Start clair-scanner
2020/10/15 19:12:53 [INFO] ▶ Server listening on port 9279
2020/10/15 19:12:53 [INFO] ▶ Analyzing 31609b718dd2bed92b93b1ab00c0ff67419a3121d0144bef0dc6ca49718820a7
2020/10/15 19:12:53 [INFO] ▶ Analyzing 8ec3f0bbb124e1a516aac62d36126fdec444ed9dbd4c1a3f39b9b9258ad4fa7d
2020/10/15 19:12:53 [INFO] ▶ Analyzing 1059dd94a6f2ad742d605091727344479f121b7aa1186aae1e288ec8e3d261a9
2020/10/15 19:12:53 [INFO] ▶ Analyzing 7c7b698480a3d1d0cd041429024423ff6cc47498749196f7126cfe980adf7917
2020/10/15 19:12:53 [INFO] ▶ Image [secureimages/prometheus:2.22.0-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.12.0 --no-progress secureimages/prometheus:2.22.0-alpine-3.12.0
2020-10-15T19:12:58.359Z        INFO    Need to update DB
2020-10-15T19:12:58.359Z        INFO    Downloading DB...
2020-10-15T19:13:46.091Z        INFO    Detecting Alpine vulnerabilities...

secureimages/prometheus:2.22.0-alpine-3.12.0 (alpine 3.12.0)
============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~168MB)

[https://hub.docker.com/r/prom/prometheus](https://hub.docker.com/r/prom/prometheus)
```
docker pull prom/prometheus:v2.22.0
```

Security scanning using Clair
```
clair-scanner prom/prometheus:v2.22.0
2020/10/15 19:13:53 [INFO] ▶ Start clair-scanner
2020/10/15 19:13:55 [INFO] ▶ Server listening on port 9279
2020/10/15 19:13:55 [INFO] ▶ Analyzing e190ccde9304b67c2ab7e688bbd97bf481172235a7261235ba4ae98e7b037e46
2020/10/15 19:13:55 [INFO] ▶ Analyzing e4023a9eb3999a69f0f67a2f279eec84f03ed4839fc442c4dec014a278ac45a9
2020/10/15 19:13:55 [INFO] ▶ Analyzing 6adf16617273d1a02a1b0a479d9f4f1b1f795f7b7b857c786881b11944adc9a1
2020/10/15 19:13:55 [INFO] ▶ Analyzing 5e328199826f7628420bd2df714f194d78b37ff782fce920f301c3616c95739a
2020/10/15 19:13:55 [INFO] ▶ Analyzing 642ba3a6b3f36f584824dd2150e14c1fd6b503af4769f0f83f35fa54d59f9670
2020/10/15 19:13:55 [INFO] ▶ Analyzing 2d20c95722f79ff71a7b04456687528dfae75d5b40bc4a5ed7de3d13bd3bf666
2020/10/15 19:13:55 [INFO] ▶ Analyzing fd1a63fc3f2cc6c19b164e12e40a7c39844b1bca691cbd71cfcf9cb20f1f911d
2020/10/15 19:13:55 [INFO] ▶ Analyzing 744b86cbbf3e3ec6a1bfefc4e5c31c2ac18096af3628401aef2dea1449fcc505
2020/10/15 19:13:55 [INFO] ▶ Analyzing 81775fe816a50ce0a690baa0b00a9f49f724c74da4e95b1cfe8896fbe4e7c543
2020/10/15 19:13:55 [INFO] ▶ Analyzing 3b54e4bbc31d7d5aebb58853e3e121a65e89dbc1f4f51ccab02141d6137b9073
2020/10/15 19:13:55 [INFO] ▶ Analyzing bcb88612cb48598d7a65de4de0079dd8c1ef6fdcc9a7a269c97de433b506704d
2020/10/15 19:13:55 [INFO] ▶ Analyzing 04eed1d944428a512683be06e0414aa2c55bc12567926f3f6d5106140b344ea6
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.12.0 --no-progress prom/prometheus:v2.22.0
2020-10-15T19:13:59.500Z        INFO    Need to update DB
2020-10-15T19:13:59.500Z        INFO    Downloading DB...
2020-10-15T19:14:09.788Z        WARN    OS is not detected and vulnerabilities in OS packages are not detected.
```
