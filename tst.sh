#!/bin/sh

set -x

./register-client -c /bin/sleep -a 200 -n Sleep -p 80 -t _sleeper._tcp -v

