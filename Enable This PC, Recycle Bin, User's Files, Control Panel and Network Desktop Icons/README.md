# Group Policy: Enable This PC, Recycle Bin, User's Files, Control Panel and Network Desktop Icons

<b>Objectives:</b>

* Enable This PC, Control Panel desktop icons

<b>Available icons:</b>

* This PC
    * {20D04FE0-3AEA-1069-A2D8-08002B30309D}
* Control Panel
    * {5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}
* User's Files
    * {59031a47-3f72-44a7-89c5-5595fe6b30ee}
* Recycle Bin
    * {645FF040-5081-101B-9F08-00AA002F954E}
* Network
    * {F02C1A0D-BE21-4350-88B0-7367FC96EF3C}

<b>Policy location:</b>
```
User Configuration -> Preferences -> Windows Settings -> Registry
```

<b>Policy settings:</b>

<b>Anction:</b> Update <br />
<b>Hive:</b> HKEY_CURRENT_USER <br />
<b>Key Path:</b> Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel <br />
<b>Value Name:</b> {20D04FE0-3AEA-1069-A2D8-08002B30309D} <br />
<b>Value Data:</b> 0 </br>


### Related videos

<b>My windows server setup:</b> <br />

[Windows Server 2022: Install File Server role and prepare a share for software deployment with GPO](https://youtu.be/jEWSdC2qwyA) <br />
[Windows Server 2022: Install DHCP server](https://youtu.be/8n0MD9stQis) <br />
[Windows Server 2022: Install Active Directory Domain Services (AD DS)](https://youtu.be/1cYewbW3Tl0) <br />