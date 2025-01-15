# Timeless-Server
A basic immutable docker host, originally created for the build server.
Modified from TimelessOS/Desktop

## Installation
### !!! WARNINGS !!!
Timeless is UEFI Only. If you aren't able to use UEFI, then Timeless will most likely not work or boot at all.
Timeless is currently unable to use NVMe drives are any drives that would cause 'p' to be placed before partitions. (EG: SDCards, NVMe Drives.)

### Instructions
DD the image onto a USB. Boot off the USB
`ssh-copy-id root@[SERVER IP]`
> The Password for initial setup is: "a"
`ssh root@[SERVER IP] timeless-install-to [INSTALL LOCATION]` (Install location should be a disk identifier, Eg: sda)