# Group Policy: Configure Windows auto logon registry settings

<b>Documentation:</b>

* [Turn on automatic logon in Windows](https://learn.microsoft.com/en-us/troubleshoot/windows-server/user-profiles-and-logon/turn-on-automatic-logon)

<b>Notes:</b>

* Auto logon user requires password
* Auto logon stores password as plain text in registry

<b>Policy location:</b>

```batch
Computer Configuration -> Preferences -> Windows Settings -> Registry
```

<b>Policy settings:</b>

* <b>AutoAdminLogon</b>
  * <b>Action:</b> Update
  * <b>Hive:</b> HKEY_LOCAL_MACHINE
  * <b>Key Path:</b> SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon
  * <b>Value name:</b> AutoAdminLogon
  * <b>Value type:</b> REG_SZ
  * <b>Value data:</b> 1

* <b>DefaultUserName</b>
  * <b>Action:</b> Update
  * <b>Hive:</b> HKEY_LOCAL_MACHINE
  * <b>Key Path:</b> SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon
  * <b>Value name:</b> DefaultUserName
  * <b>Value type:</b> REG_SZ
  * <b>Value data:</b> john
  
* <b>DefaultPassword</b>
  * <b>Action:</b> Update
  * <b>Hive:</b> HKEY_LOCAL_MACHINE
  * <b>Key Path:</b> SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon
  * <b>Value name:</b> DefaultPassword
  * <b>Value type:</b> REG_SZ
  * <b>Value data:</b> password55#

* <b>DefaultDomainName</b>
  * <b>Action:</b> Update
  * <b>Hive:</b> HKEY_LOCAL_MACHINE
  * <b>Key Path:</b> SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon
  * <b>Value name:</b> DefaultDomainName
  * <b>Value type:</b> REG_SZ
  * <b>Value data:</b> ad.letsdoautomation.com

### My enviroment setup

<b>Group Policy and settings that i have configured in my servers and clients:</b> <br />

[Group Policy: Always Wait for the Network at Computer Startup and Logon](https://youtu.be/8BF0rU7peNk) <br />
[Group Policy: Display highly detailed status messages](https://youtu.be/2LB51n4O1Lk) <br />
[Group Policy: Create an "Install a Program from the Network" desktop shortcut](https://youtu.be/s_pMiG0F0ho) <br />

<b>My windows server setup:</b> <br />

[Windows Server 2022: Install File Server role and prepare a share for software deployment with GPO](https://youtu.be/jEWSdC2qwyA) <br />
[Windows Server 2022: Install DHCP server](https://youtu.be/8n0MD9stQis) <br />
[Windows Server 2022: Install Active Directory Domain Services (AD DS)](https://youtu.be/1cYewbW3Tl0) <br />
