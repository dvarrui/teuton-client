
# Teuton Client

## Introduction

[Teuton Software](https://github.com/teuton-software/teuton) is an infrastructure test application, that is installed into host called T-NODE. T-NODE user monitorize remote S-NODE users machines using [Teuton Software](https://github.com/teuton-software/teuton).

When a S-NODE user wants to be tested, must wait until T-NODE user launch manually Teuton test units. Or start TeutonServer and attend request automatically.

**Teuton client** is used for S-NODE users, to send request to TeutonServer (T-NODE host). This way, S-NODE host is evaluated by the server at any time without T-NODE user intervention.

## Installation

`gem install teuton-client`

## Running

* First, TeutonServer must be running into T-NODE host.
* `teuton-client SERVER-IP 16001`, S-NODE user send requet ro server.

Let¡s see an example:

```
teuton-client => Waiting...   SERVER-IP:16001 (teuton-server)
              => Connection : SERVER-IP:16001 -> 127.0.0.1:34080
              => Timestamp  : 2019-11-06 19:06:22 +0000
              => Action     : teuton play --quiet --case=1 ./testname01
              => Grade      : 100
```
