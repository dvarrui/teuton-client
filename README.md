
# Teuton Client

[![Gem Version](https://badge.fury.io/rb/teuton-client.svg)](https://badge.fury.io/rb/teuton-client)

[Teuton Software](https://github.com/teuton-software/teuton) is an infrastructure test application, that is installed into host called T-NODE.

**Manual**

User from T-NODE machine monitorize remote S-NODE machines using [Teuton Software](https://github.com/teuton-software/teuton). So when a S-NODE user is ready to be tested, must wait until T-NODE user decided to launch manually Teuton test units.

**Auto**

If T-NODE user starts TeutonServer, then requests will be attended automatically.

S-NODE users execute **Teuton client**, to send request to TeutonServer (T-NODE host). So, S-NODE host is evaluated by the server at any time without T-NODE user intervention.

## Installation

`gem install teuton-client`

## Usage

* First, [TeutonServer](https://github.com/teuton-software/teuton-server) must be running into T-NODE host.
* `teuton-client SERVER-IP 16001`, S-NODE user send requet ro server.

## Examples

TeutonClient connecting to SERVER-IP, port 16001:

```
teuton-client => Waiting...   SERVER-IP:16001 (teuton-server)
              => Connection : SERVER-IP:16001 -> 127.0.0.1:34080
              => Timestamp  : 2019-11-06 19:06:22 +0000
              => Testname   : testname01
              => Grade      : 100
```

In this example, TeutonServer processed request and responded with evaluation grade equal to 100.
