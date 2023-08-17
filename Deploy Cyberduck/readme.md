## Documentation and download
Download link: [Cyberduk](https://cyberduck.io/download/) <br />
Documentation link: N/A <br />

## Path to File policy settings

<b>Policy path:</b> Computer Configuration > Preferences > Windows Settings > Files <br />

## For setup file deployment

<b>Source file(s):</b> \\\\srv02\software\cyberduck\Cyberduck-Installer-8.6.3.40040.exe <br />
<b>Destination File:</b> %CommonAppdataDir%\deployment_files\cyberduck\Cyberduck-Installer-8.6.3.40040.exe <br />

<img src="img/2023-08-17 18_31_06-srv01 - VMware Workstation.png" width=40% height=40%>

#### Item-level targeting
<b>Hive:</b> HKEY_LOCAL_MACHINE <br />
<b>Key path:</b> SOFTWARE\Cyberduck <br />

<img src="img/2023-08-17 18_31_32-srv01 - VMware Workstation.png" width=40% height=40%>

## For script file deployment

<b>Policy path:</b> Computer Configuration > Preferences > Windows Settings > Files <br />

<b>Source file(s):</b> \\\\srv02\software\cyberduck\run.ps1 <br />
<b>Destination File:</b> %CommonAppdataDir%\deployment_files\cyberduck\run.ps1 <br />

<img src="img/2023-08-17 19_09_35-srv01 - VMware Workstation.png" width=40% height=40%>

#### Item-level targeting
<b>Hive:</b> HKEY_LOCAL_MACHINE <br />
<b>Key path:</b> SOFTWARE\Cyberduck <br />

<img src="img/2023-08-17 18_31_32-srv01 - VMware Workstation.png" width=40% height=40%>

## My enviroment setup
Group Policy and settings that i have configured in my servers and clients <br />
[Group Policy: Creating 32 and 64 bit WMI filters](https://youtu.be/ffBIiQaVXGM) <br />
[Group Policy: Always Wait for the Network at Computer Startup and Logon](https://youtu.be/8BF0rU7peNk) <br />
[Group Policy: Display highly detailed status messages](https://youtu.be/2LB51n4O1Lk) <br />
[Group Policy: Create an "Install a Program from the Network" desktop shortcut](https://youtu.be/s_pMiG0F0ho) <br />
My windows server setup: <br />
[Windows Server 2022: Install File Server role and prepare a share for software deployment with GPO](https://youtu.be/jEWSdC2qwyA) <br />
[Windows Server 2022: Install DHCP server](https://youtu.be/8n0MD9stQis) <br />
[Windows Server 2022: Install Active Directory Domain Services (AD DS)](https://youtu.be/1cYewbW3Tl0) <br />
