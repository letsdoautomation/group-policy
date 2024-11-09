# Group Policy: Stop Teams from running on startup in Windows

<b>Notes:</b>

* Works for Microsoft Teams(new)

<b>Registry entry location:</b>

```batch
HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\SystemAppData\MSTeams_8wekyb3d8bbwe\TeamsTfwStartupTask
```

<b>Policy location:</b>

```batch
User Configuration -> Preferences -> Windows Settings -> Registry
```

<b>Policy settings:</b>

* <b>AutoAdminLogon</b>
  * <b>Action:</b> Update
  * <b>Hive:</b> HKEY_CURRENT_USER
  * <b>Key Path:</b> SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\SystemAppData\MSTeams_8wekyb3d8bbwe\TeamsTfwStartupTask
  * <b>Value name:</b> state
  * <b>Value type:</b> REG_DWROD
  * <b>Value data:</b> 1

### Related videos

<b>My windows server setup:</b>

* [Windows Server 2022: Install File Server role and prepare a share for software deployment with GPO](https://youtu.be/jEWSdC2qwyA)
* [Windows Server 2022: Install DHCP server](https://youtu.be/8n0MD9stQis)
* [Windows Server 2022: Install Active Directory Domain Services (AD DS)](https://youtu.be/1cYewbW3Tl0)