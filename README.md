# Build VMs for IBM Cloud Private

Clone VMWare Workstation and set up VMs for IBM Cloud Private

I use these scripts and run them using a base image which is cloned to 'n' number of hosts.

This is mainly for VMware Workstation and use vmrun command to start / run / stop / take snapshots so that the
process is automated.

The scripts need to run as root and can be placed on /root directory on a Linux host.

The script is only tested and written on CentOS.

The sample directory and file structure for the the base VM image is as follows:

```
   |-- icp01
   |   |---icp01.vmx
   |   |---icp01.vmdk
   |   |---icp01-tmp.vmdk
   |   |---dockerbackend.vmdk
   |   |---gpfs.vmdk
   |   |---gluster.vmdk
   |-- icp02
   |   |---icp02.vmx
   |   |---icp02.vmdk
   |-- icp03
   |   |---icp03.vmx
   |-- icp04
   |   |---icp04.vmx
   |-- icp05
   |   |---icp05.vmx   
   |   ReadMe.txt
   |-- RUN00-Build-All.CMD
   |-- RUN01-Check-Free-Space.ps1
   |-- RUN02-RunAsAdmin.ps1
   |-- RUN03-FixVMMemory.ps1
   |-- RUN04-FixVMNetAddress.CMD
   |-- RUN05-CloneBuild.CMD
   |-- RUN06-TakeSnapshot.CMD
   |-- RUN07-Create-Desktop-Shortcut.CMD
   |-- RUN08-Create-Desktop-Shortcut.vbs
```

I have Server with GUI VMDK created for icp01 and minimum server install for icp02.

The snapshot is taken before starting the VMs. The dockerbackend.vmdk which has
all docker images is shared across all VMs so that we do not waste lots of space.

The RUN05-CloneBuild.CMD will copy the VMDKs, take the snapshot and start the machines.

Once machine starts, the startup script is kept /etc/rc.local

```
/root/bin/setup/firstboot >> /tmp/allcommands.log 2>&1 &
```

The firstboot scripts looks for the MAc address of the adapter to identify which
node we are running the script.

The firstboot is the main driver and it will launch several other scripts to
fix the network, IP address, hostname and then build password less SSH between hosts.

It will reboot the nodes and once everything is done properly, the /etc/rc.local is modified
to remove the entry for the first boot.

This is a poor man scripts to do the job. Ideally, I want to use Ansible Jobs to
accomplish the same.

Except VMDK, I have added all other scripts so that it can become an example.

Note: I did not develop taste for using Virtual Box. I am a fan of VMware Workstation as this is
enterprise software which has support, performance and a track record. I see much
better performance using VMware Workstation than what I had seen with Virtual Box one time.
