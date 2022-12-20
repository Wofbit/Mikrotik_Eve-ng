#!/bin/sh

mikrotik_image='chr-7.6.vmdk'

mkdir -p /opt/unetlab/addons/qemu/mikrotik-7.6

cd /opt/unetlab/addons/qemu/mikrotik-7.6

wget https://download.mikrotik.com/routeros/7.6/chr-7.6.vmdk


/opt/qemu/bin/qemu-img convert -f vmdk -O qcow2 $mikrotik_image hda.qcow2

/opt/unetlab/wrappers/unl_wrapper -a fixpermissions

rm -rf chr-7.6.vmdk 

echo "Ok"

exit 0