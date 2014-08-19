#!/bin/bash -eu

# Copyright 2014 tsuru authors. All rights reserved.
# Use of this source code is governed by a BSD-style
# license that can be found in the LICENSE file.

apt-get update
apt-get install curl -qqy

curl -sL https://raw.github.com/philiptzou/now/master/run.bash > /tmp/tsuru-now.bash
chmod +x /tmp/tsuru-now.bash
sudo -iu $SUDO_USER /tmp/tsuru-now.bash --debug --tsuru-pkg --archive-server --hook-url https://raw.githubusercontent.com/tsuru/tsuru/master/misc/git-hooks/pre-receive.archive-server --hook-name pre-receive --ext-repository http://philiptzou.github.io/tsuru-deb/ --host-ip 192.168.42.10 --host-name hive.guokr.com --set-interface
