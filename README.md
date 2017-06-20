# Ethereum CUDA Miner


### Docker container for Ethereum mining with CUDA.

Simple and easy to run, if you have a Nvidia GPU and want to mine eth.

### Requirements
- Nvidia drivers for your GPU, you can get them here: [Nvidia drivers](http://www.nvidia.com/Download/index.aspx)
- nvidia-docker (so docker can access your GPU) install instructions here: [nvidia-docker](https://github.com/NVIDIA/nvidia-docker)

### How to run
```
nvidia-docker run -it mkudrnac/docker-ethminer ARG1 ARG2 ...

# Example
nvidia-docker run -it mkudrnac/docker-ethminer \
-S us-west1.nanopool.org:9999 \
-O 0x20ad58fe023265577565c7eb44b55c31e7497c33.cSquared/ajtatowicz@gmail.com
```

**Note** --farm-recheck and -U are set by default

**Note** Be sure to change the -O argument to your mining address and email. The format goes like this "address.worker/email"
