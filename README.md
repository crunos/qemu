# Build Docker Image

```
docker build -t crunos/qemu https://github.com/crunos/qemu.git#main
```

# Run CrunOS VM

Use the linuxkit output files
```
docker run --rm -ti --device /dev/kvm -v $(pwd):$(pwd) -w $(pwd) qemu -m 2048M -enable-kvm -kernel crunos-kernel -initrd crunos-initrd.img -nographic -device pvpanic -append "$(cat crunos-cmdline)" [-hda <disk.img>]
```

# Create a vHDD

Create a virtual hdd file (named disk.img, size 10GB)
```
qemu-img create -f qcow2 disk.img 10G
```
