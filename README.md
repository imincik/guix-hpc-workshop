# Guix VM for GuixHPC workshops

## Download and run VM

* download VM image

```bash
  wget https://ftp.gnu.org/gnu/guix/guix-system-vm-image-1.4.0.x86_64-linux.qcow2
```

* run VM

```bash
  ./run-vm.sh
```

## Configure VM

Run commands inside of VM.

* copy system configuration file

```
cp /run/current-system/configuration.scm ~/
```

* enable SSH in `configurations.scm`

* update guix

```
  sudo su -
  guix pull
  hash guix
```

* reconfigure guix

```
  sudo su -
  guix system reconfigure ./configuration.scm
```

## Use VM

* ssh to VM

```bash
  ./ssh-vm.sh
```

* mount VM home directory

```bash
  ./mount-vm.sh
```
