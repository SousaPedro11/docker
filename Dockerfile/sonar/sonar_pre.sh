sudo sysctl -w fs.file-max=131072
sudo sysctl -w vm.max_map_count=524288
ulimit -u 8192
ulimit -n 131072
