#!/bin/bash

# TDP adjust for better performance and stability on DL machines

echo 'root' | sudo -S nvidia-smi -pm 1
echo 'root' | sudo -S nvidia-smi -pl 180
