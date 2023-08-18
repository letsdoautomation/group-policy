## Documentation and download
Download link: [Dropbox](https://help.dropbox.com/installs/enterprise-installer) <br />
Documentation link: N/A <br />

## Path to File policy settings

<b>Policy path:</b> Computer Configuration > Preferences > Windows Settings > Files <br />

## For setup file deployment

<b>Source file(s):</b> \\\\srv02\software\dropbox\Dropbox 180.4.4912 Offline Installer.x86.exe <br />
<b>Destination File:</b> %CommonAppdataDir%\deployment_files\dropbox\Dropbox 180.4.4912 Offline Installer.x86.exe<br />

<img src="img/2023-08-18 19_41_03-srv01 - VMware Workstation.png" width=40% height=40%>

#### Item-level targeting
<b>Hive:</b> HKEY_LOCAL_MACHINE <br />
<b>Key path:</b> SOFTWARE\WOW6432Node\Dropbox <br />

##### AND
<b>Hive:</b> HKEY_LOCAL_MACHINE <br />
<b>Key path:</b> SOFTWARE\Dropbox <br />


<img src="img/2023-08-18 19_42_52-srv01 - VMware Workstation.png" width=40% height=40%>

## For script file deployment
<b>Policy path:</b> Computer Configuration > Preferences > Windows Settings > Files <br />

<b>Source file(s):</b> \\\\srv02\software\dropbox\run.ps1 <br />
<b>Destination File:</b> %CommonAppdataDir%\deployment_files\dropbox\run.ps1 <br />

<img src="img/2023-08-18 19_47_58-srv01 - VMware Workstation.png" width=40% height=40%>

#### Item-level targeting
<b>Hive:</b> HKEY_LOCAL_MACHINE <br />
<b>Key path:</b> SOFTWARE\WOW6432Node\Dropbox <br />

##### AND
<b>Hive:</b> HKEY_LOCAL_MACHINE <br />
<b>Key path:</b> SOFTWARE\Dropbox <br />

<img src="img/2023-08-18 19_42_52-srv01 - VMware Workstation.png" width=40% height=40%>

## Path to Scheduled Tasks policy settings

<b>Policy path:</b> Computer Configuration > Preferences > Control Panel Settings > Scheduled Tasks <br />

## For Scheduled Tasks deployment

<b>Name:</b> Deploy dropbox <br />
<b>When runing the task, use the following user account:</b> NT AUTHORITY\System

<img src="img/2023-08-18 19_50_46-srv01 - VMware Workstation.png" width=40% height=40%>

<img src="img/2023-08-18 19_51_17-srv01 - VMware Workstation.png" width=40% height=40%>

#### Action

<b>Program/Script:</b> powershell.exe <br />
<b>Add arguments(optional):</b> -ExecutionPolicy Bypass -File %ALLUSERSPROFILE%\deployment_files\dropbox\run.ps1 -Exe "%ALLUSERSPROFILE%\deployment_files\dropbox\Dropbox 180.4.4912 Offline Installer.x86.exe" -ArgumentList "/NOLAUNCH" -Registry "HKLM:\SOFTWARE\Dropbox,HKLM:\SOFTWARE\WOW6432Node\Dropbox" <br />

<img src="img/2023-08-18 21_02_49-srv01 - VMware Workstation.png" width=40% height=40%>

#### Item-level targeting
<b>Hive:</b> HKEY_LOCAL_MACHINE <br />
<b>Key path:</b> SOFTWARE\WOW6432Node\Dropbox <br />

##### AND
<b>Hive:</b> HKEY_LOCAL_MACHINE <br />
<b>Key path:</b> SOFTWARE\Dropbox <br />

<img src="img/2023-08-18 19_42_52-srv01 - VMware Workstation.png" width=40% height=40%>

## For Scheduled Tasks removal

#### Item-level targeting
<b>Hive:</b> HKEY_LOCAL_MACHINE <br />
<b>Key path:</b> SOFTWARE\WOW6432Node\Dropbox <br />

##### OR
<b>Hive:</b> HKEY_LOCAL_MACHINE <br />
<b>Key path:</b> SOFTWARE\Dropbox <br />

<img src="img/2023-08-18 20_52_24-srv01 - VMware Workstation.png" width=40% height=40%>

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
