
PLEASE DO NOT RUN icp01.vmx as this will break the build process.

First run RUN00-Build-All.CMD to build machines in the right order.

Once machines are built properly then you can run icp01.vmx.

Check List before you run the command.
=====================================

Minimum Memory Requirement
==========================

A. You must have minimum 32 GB RAM and minimum 130 GB of free storage space.

B. Please open a command line window and type "powershell" and you should see another
   command line window. We run a PowerShell script to change the VMware vmx file to set
   memory appropriately.


VMware Workstation Dependencies and vmnet setting
=================================================

A. Start VMware Work Station and click Help > About.
   Your VMware Workstation must be 12.5.2 or higher.
   If it is not, please procure / upgrade your VMware Workstation

B. Please make sure that vmrun.exe is available in C:\Program Files (x86)\VMware\VMware VIX.
   If vmrun is not available, please stop and install it using VMware Workstation software install.

C. Click on Edit > Preferences and click on Memory. If using 32 GB RAM, change the reserved memory to 28368 KB.

D. Close existing VM tabs, if any.

E. Close VMware Work Station. Click File > Exit.


Unzip the files to a folder of your choice
==========================================

You should see the following directory and file structure after unzip
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
We will use 4 virtual machines for this proof of technology.

Please notice that the VMDK files are given only for the first machine and the
build process will clone and prepare other machines.

We need an Elevated Shell
=========================

G. Open a command window with Adminstrative privileges.
   (a) - Click Start, click All Programs, and then click Accessories.
   (b) - Right-click Command prompt, and then click Run as administrator.
   (c) - If the User Account Control dialog box appears, confirm that the action
         it displays is what you want, and then click Continue.

Clone Machines, Install Software and create DB2 DPF Environment
===============================================================

H. Change directory in your elevated shell where you unzip files

I. Type command "RUN00-Build-All.CMD" and this will run all
   commands in the sequence to clone and prepare all 4 machines:

   RUN00-Build-All.CMD may take 50-70 minutes to complete all operations using SSD.         

   Note: While commands are running, please do not do other activity. You may
         see VMware prompt and click Yes or OK to continue.


J. Use this base machine to image laptops for the class.
