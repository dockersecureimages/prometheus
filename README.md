# Prometheus

Prometheus, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/prometheus:2.17.1-alpine-3.11.5
2020/03/27 22:32:14 [INFO] ▶ Start clair-scanner
2020/03/27 22:32:16 [INFO] ▶ Server listening on port 9279
2020/03/27 22:32:16 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/03/27 22:32:16 [INFO] ▶ Analyzing a1bbc186a92480b8afb1e4df8867c0205c0203abcec1783d10dfc81cda7444ba
2020/03/27 22:32:16 [INFO] ▶ Analyzing e3b916863d37c27a054461366819d38389eabe6e4e7ea118faf04729b54c6ef8
2020/03/27 22:32:16 [INFO] ▶ Analyzing f7403b5405dd4affe28df62219ca7b19e485161263bff2b368283d25d4d32370
2020/03/27 22:32:16 [INFO] ▶ Image [secureimages/prometheus:2.17.1-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress secureimages/prometheus:2.17.1-alpine-3.11.5
2020-03-27T20:32:28.729Z        INFO    Need to update DB
2020-03-27T20:32:28.729Z        INFO    Downloading DB...
2020-03-27T20:32:41.628Z        INFO    Reopening DB...
2020-03-27T20:32:44.738Z        INFO    Detecting Alpine vulnerabilities...

secureimages/prometheus:2.17.1-alpine-3.11.5 (alpine 3.11.5)
============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/prom/prometheus](https://hub.docker.com/r/prom/prometheus)
```
docker pull prom/prometheus:v2.17.1
```

Security scanning using Clair
```
clair-scanner prom/prometheus:v2.17.1
2020/03/27 22:32:52 [INFO] ▶ Start clair-scanner
2020/03/27 22:32:54 [INFO] ▶ Server listening on port 9279
2020/03/27 22:32:54 [INFO] ▶ Analyzing 667676fde0639ebeb24e821cffbc240bb254c45c09d8c7d737f23b9fbfe68391
2020/03/27 22:32:54 [INFO] ▶ Analyzing 88a46c70cad3e63727733abeb37ff75c991e33e537ea7917cfbf694d45c34e24
2020/03/27 22:32:54 [INFO] ▶ Analyzing 4aefd1805f733d6771bd7e1d95a765772d23be48968577c11faf362a9a7406ad
2020/03/27 22:32:54 [INFO] ▶ Analyzing c91fceca6aef967bb1913af64e3253bd8723bca35c294813de844d95cd1b8295
2020/03/27 22:32:54 [INFO] ▶ Analyzing 66e31b0fd92666bc2d41ca2b38330b78f54d0c71028b9ee704042608e6103293
2020/03/27 22:32:54 [INFO] ▶ Analyzing 9d8fe0d79071034385f138a72dad96e1855c9f5a2b44a09dae71fd6c9c7ec530
2020/03/27 22:32:54 [INFO] ▶ Analyzing fc36efb8ef5269cb1750a94d3383720124ddf4640ca042b94a5e814e054a6ead
2020/03/27 22:32:54 [INFO] ▶ Analyzing e19bae4555391ca0f984edd0e99190b27b66c7fdda5c8347b055f32452a9e91a
2020/03/27 22:32:54 [INFO] ▶ Analyzing c02bb08b74c184885f24142eb7635f2cdb6624d9381629821084f1f701debb75
2020/03/27 22:32:54 [INFO] ▶ Analyzing a2e32b7fcc9a7a96e084c8a19ea2a977d5580957b09069b5de7c13fc3a559d0c
2020/03/27 22:32:54 [INFO] ▶ Analyzing 672a6d411c5bae1d9444bca0f0057d2676d109f4f8f0263043390645ab2ca55f
2020/03/27 22:32:54 [INFO] ▶ Analyzing 5a79cd12d8eec2f55c9d10d54d0b031fabc8ed1d093a4f5e7e1e41722fd371cb
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress prom/prometheus:v2.17.1
2020-03-27T20:33:00.090Z        INFO    Need to update DB
2020-03-27T20:33:00.091Z        INFO    Downloading DB...
2020-03-27T20:33:05.270Z        INFO    Reopening DB...
2020-03-27T20:33:08.545Z        FATAL   error in image scan: scan failed: failed to apply layers: unknown OS
```
