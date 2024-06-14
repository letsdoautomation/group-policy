# Group Policy: Remove Home and Gallery from File Explorer

<b>Objectives:</b>

* Remove Home and Gallery from File Explorer using Group Policy

<b>Policy location:</b>
```
Computer Configuration -> Preferences -> Windows Settings -> Registry
```

# After Windows 23h2 update

<b>Policy settings:</b>

<b>Action:</b> Delete <br />
<b>Hive:</b> HKEY_LOCAL_MACHINE <br />
<b>Key Path:</b> SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\\{f874310e-b6b7-47dc-bc84-b9e6b38f5903} <br />

### Remove Gallery

<b>Policy settings:</b>

<b>Action:</b> Delete <br />
<b>Hive:</b> HKEY_LOCAL_MACHINE <br />
<b>Key Path:</b> SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\\{e88865ea-0e1c-4e20-9aa6-edcd0212c87c} <br />

# Before Windows 23h2 update

### Remove Home

<b>Policy settings:</b>

<b>Action:</b> Delete <br />
<b>Hive:</b> HKEY_LOCAL_MACHINE <br />
<b>Key Path:</b> SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace_36354489\\{f874310e-b6b7-47dc-bc84-b9e6b38f5903} <br />

### Remove Gallery

<b>Policy settings:</b>

<b>Action:</b> Delete <br />
<b>Hive:</b> HKEY_LOCAL_MACHINE <br />
<b>Key Path:</b> SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace_41040327\\{e88865ea-0e1c-4e20-9aa6-edcd0212c87c} <br />

### Restore Home

<b>Policy settings:</b>

<b>Action:</b> Update <br />
<b>Hive:</b> HKEY_LOCAL_MACHINE <br />
<b>Key Path:</b> SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace_36354489\\{f874310e-b6b7-47dc-bc84-b9e6b38f5903} <br />
<b>Value Name:</b> True <br />
<b>Value Data:</b> CLSID_MSGraphHomeFolder

### Restore Gallery

<b>Policy settings:</b>

<b>Action:</b> Update <br />
<b>Hive:</b> HKEY_LOCAL_MACHINE <br />
<b>Key Path:</b> SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace_41040327\\{e88865ea-0e1c-4e20-9aa6-edcd0212c87c} <br />
<b>Value Name:</b> True <br />
<b>Value Data:</b> {e88865ea-0e1c-4e20-9aa6-edcd0212c87c}

### Related videos

<b>WMI filters:<b> <br />

[Group Policy: Create WMI filters for Windows 10 and Windows 11](https://youtu.be/7k_kpaLpMI8)

<b>My windows server setup:</b> <br />

[Windows Server 2022: Install File Server role and prepare a share for software deployment with GPO](https://youtu.be/jEWSdC2qwyA) <br />
[Windows Server 2022: Install DHCP server](https://youtu.be/8n0MD9stQis) <br />
[Windows Server 2022: Install Active Directory Domain Services (AD DS)](https://youtu.be/1cYewbW3Tl0) <br />
