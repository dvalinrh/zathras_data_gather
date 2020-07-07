#!/bin/bash
KERN=`uname -r`
numa_nodes=`lscpu | grep NUMA | grep CPU | wc -l`
numb_cpus=`cat /proc/cpuinfo |grep "processor" | wc -l`
cpu_info=`cat /proc/cpuinfo | grep "model name" | sort -u`
memory=`cat /proc/meminfo | grep MemTotal: | cut -d: -f 2`
echo kernel:  $KERN
echo numa_nodes: $numa_nodes
echo number_cpus: $numb_cpus
echo cpu_info: $cpu_info
echo total_memory:  $memory

