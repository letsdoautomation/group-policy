# Group Policy: Windows 11 configure Start layout more pins

<b>Objectives:</b>

<img src="img/objective.png" width=50% height=50%>

<b>Policy location:</b> User Configuration -> Preferences -> Windows Settings -> Registry

<b>Anction:</b> Update <br />
<b>Hive:</b> HKEY_CURRENT_USER <br />
<b>Key Path:</b> SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced <br />
<b>Value Name:</b> Start_Layout <br />
<b>Value Type:</b> REG_DWORD <br />
<b>Value Data:</b> 0 - Default, 1 - More pins, 2 - More recommendations </br>

<b>My windows server setup:</b> <br />

* [Windows Server 2022: Install File Server role and prepare a share for software deployment with GPO](https://youtu.be/jEWSdC2qwyA)
* [Windows Server 2022: Install DHCP server](https://youtu.be/8n0MD9stQis)
* [Windows Server 2022: Install Active Directory Domain Services (AD DS)](https://youtu.be/1cYewbW3Tl0)
* [Create WMI filters for Windows 10 and Windows 11](https://youtu.be/7k_kpaLpMI8)