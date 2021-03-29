# Getting started

## Limiting GPUs TDP at startup for Deep learning Training for air cooling systems

### Important - All the steps need to be done as root

1. Download the repo to /home/bizon
2. Create a folder ".gpu" and copy the gpu_tdp.sh inside with executable rights
```bash
mkdir .gpu
cd gpu_optimization
cp gpu_tdp.sh /home/bizon/.gpu
cd /home/bizon/.gpu
chmod +x gpu_tdp.sh
```

3. Add the script to crontab for autostart
```bash
crontab -e
echo '1'
```
Add the following line at the end
```bash
@reboot echo 'password' | sudo -S bash /home/bizon/.gpu/gpu_tdp.sh
```  

4. Change the gpu_tdp.sh TDP according to your target. 

Example: nvidia-smi -pl 180 - nvidia-smi -pl 220 
