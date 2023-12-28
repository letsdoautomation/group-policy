# Group Policy: Change Right Click Mouse Context Menu

<b>Objectives:</b>

* Enable old right click menu using group policy

<b>Policy location:</b>
```
User Configuration -> Preferences -> Windows Settings -> Registry
```
<b>Policy settings:</b>

<b>Key Path:</b> Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32 <br />
<b>Value Name:</b> True <br />
<b>Value Data:</b>


### My enviroment setup

<b>My windows server setup:</b> <br />

[Windows Server 2022: Install File Server role and prepare a share for software deployment with GPO](https://youtu.be/jEWSdC2qwyA) <br />
[Windows Server 2022: Install DHCP server](https://youtu.be/8n0MD9stQis) <br />
[Windows Server 2022: Install Active Directory Domain Services (AD DS)](https://youtu.be/1cYewbW3Tl0) <br />