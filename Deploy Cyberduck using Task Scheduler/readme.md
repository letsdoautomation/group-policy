# Group Policy: Deploy Cyberduck using Task Scheduler
## Documentation and download
<b>Download links:</b><br /> 

* [Cyberduck](https://cyberduck.io/download/)

<b>Objectives:</b>
* Create Group Policy
    * Deploy installation exe to C:\programdata\deployment
        * Set Item-Level targeting
    * Deploy run.ps1 to C:\programdata\deployment
        * Set Item-Level targeting
    * Deploy scheduled task
        * Set Item-Level targeting
    * Remove scheduled task
        * Set Item-Level targeting

## .EXE deployment
<b>Action:</b> Update <br />
<b>Source File(s):</b> \\\\srv02\software\cyberduck\Cyberduck-Installer-8.7.1.40770.exe <br />
<b>Destination File:</b> %CommonAppdataDir%\deployment\cyberduck\Cyberduck-Installer-8.7.1.40770.exe

### Item-level targeting
<b>Registry Match</b><br />
<b>Match type:</b> Key Exists then switch to (does not exist) <br />
<b>Hive:</b> HKEY_LOCAL_MACHINE <br />
<b>Key Path:</b> SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{4FA801DC-E821-47F3-AD08-67DF41AA36DC}

## run.ps1 deployment
<b>Action:</b> Update <br />
<b>Source File(s):</b> \\\\srv02\software\cyberduck\run.ps1 <br />
<b>Destination File:</b> %CommonAppdataDir%\deployment\cyberduck\run.ps1

### Item-level targeting
<b>Registry Match</b><br />
<b>Match type:</b> Key Exists then switch to (does not exist) <br />
<b>Hive:</b> HKEY_LOCAL_MACHINE <br />
<b>Key Path:</b> SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{4FA801DC-E821-47F3-AD08-67DF41AA36DC}

## Scheduled Task deployment
<b>Name:</b> Deploy cyberduck <br />
<b>When runing the task, use the following user account:</b> NT AUTHORITY\System

### Trigger
<b>Begin the task:</b> At startup

### Action
<b>Program/Script:</b> powershell.exe <br />
<b>Add arguments(optional):</b> -ExecutionPolicy Bypass -File %ALLUSERSPROFILE%\deployment\cyberduck\run.ps1 -Exe "%ALLUSERSPROFILE%\deployment\cyberduck\Cyberduck-Installer-8.7.1.40770.exe" -ArgumentList "/quiet" -Registry "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{4FA801DC-E821-47F3-AD08-67DF41AA36DC}" <br />

### Item-level targeting
<b>Registry Match</b><br />
<b>Match type:</b> Key Exists then switch to (does not exist) <br />
<b>Hive:</b> HKEY_LOCAL_MACHINE <br />
<b>Key Path:</b> SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{4FA801DC-E821-47F3-AD08-67DF41AA36DC}

# Related videos

<b>Group Policy and settings that i have configured in my servers and clients</b>

[Group Policy: Creating 32 and 64 bit WMI filters](https://youtu.be/ffBIiQaVXGM) <br />
[Group Policy: Always Wait for the Network at Computer Startup and Logon](https://youtu.be/8BF0rU7peNk) <br />
[Group Policy: Display highly detailed status messages](https://youtu.be/2LB51n4O1Lk) <br />
[Group Policy: Create an "Install a Program from the Network" desktop shortcut](https://youtu.be/s_pMiG0F0ho) <br />

<b>My windows server setup</b>

[Windows Server 2022: Install File Server role and prepare a share for software deployment with GPO](https://youtu.be/jEWSdC2qwyA) <br />
[Windows Server 2022: Install DHCP server](https://youtu.be/8n0MD9stQis) <br />
[Windows Server 2022: Install Active Directory Domain Services (AD DS)](https://youtu.be/1cYewbW3Tl0) <br />
