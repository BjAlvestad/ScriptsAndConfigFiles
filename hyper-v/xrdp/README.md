# Install guide

## Setup inside Guest

Download relevant script:

```sh
wget https://...
```

Make executable if nessecary:

```sh
sudo chmod +x xox-install.sh
```

Run the installer.
Note that you may have to restart, and then run the installer again afterwards.

## Config from host

Shut down the guest, then on the host run:

```powershell
Set-VM -VMName <your_vm_name> -EnhancedSessionTransportType HvSocket
```

## The result

When starting and connecting to the virtual machine, you should be greeted with a connection prompt window that asks for screen resolution.
This indicates that everything is installed correctly.
It will take you to the *Xorg* login.
