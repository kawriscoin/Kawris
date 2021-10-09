#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.kawriscore/kawrisd.pid file instead
kawris_pid=$(<~/.kawriscore/testnet3/kawrisd.pid)
sudo gdb -batch -ex "source debug.gdb" kawrisd ${kawris_pid}
