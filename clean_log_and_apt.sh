#!/bin/bash
sudo du -sh /var/cache/apt # see the size of cache you have
sudo apt-get clean  # to clean the cache
journalctl --disk-usage # check the storage used in old logs
sudo journalctl --vacuum-time=3d # to clear logs before 3 days - number before d can be changed
