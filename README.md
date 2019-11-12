
# Teuton Client

## Introduction

[Teuton](https://github.com/teuton-software/teuton) is an infrastructure test application installed into host called T-NODE. T-NODE user monitorize remote S-NODE users machines.

When a S-NODE user X wants to be tested, must wait until T-NODE user launch Teuton test unit.

## Teuton Client software

Teuton client is used to send request to TeutonServer (T-NODE host).
This way, S-NODE host is evaluated by the server at any time without T-NODE user intervention.

## Installation

`gem install teuton-client`

## Running client

* TeutonServer must be running into T-NODE host.
* From S-NODE host, user makes request executing `teuton-client localhost 16001`:

```
teuton-client => Waiting...   localhost:16001 (teuton-server)
              => Connection : 127.0.0.1:16001 -> 127.0.0.1:34080
              => Timestamp  : 2019-11-06 19:06:22 +0000
              => Action     : teuton play --quiet --case=1 ./testname01
              => Grade      : 100
```
