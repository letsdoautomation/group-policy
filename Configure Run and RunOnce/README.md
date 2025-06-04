# Group Policy: Configure Run and RunOnce

<b>Objectives:</b>

* Create RunOnce and Run policy for user
* Create Run policy for computer

<b>Policy settings for user Run:</b>

<b>Policy location:</b> User Configuration -> Preferences -> Windows Settings -> Registry

<b>Anction:</b> Update <br />
<b>Hive:</b> HKEY_CURRENT_USER <br />
<b>Key Path:</b> Software\Microsoft\Windows\CurrentVersion\Run <br />
<b>Value Name:</b> run_cmd <br />
<b>Value Type:</b> REG_SZ <br />
<b>Value Data:</b> cmd.exe </br>

<b>Policy settings for user RunOnce:</b>

<b>Policy location:</b> User Configuration -> Preferences -> Windows Settings -> Registry

<b>Anction:</b> Update <br />
<b>Hive:</b> HKEY_CURRENT_USER <br />
<b>Key Path:</b> Software\Microsoft\Windows\CurrentVersion\RunOnce <br />
<b>Value Name:</b> run_notepad <br />
<b>Value Type:</b> REG_SZ <br />
<b>Value Data:</b> C:\Windows\notepad.exe </br>

<b>Policy settings for computer Run:</b>

<b>Policy location:</b> Computer Configuration -> Preferences -> Windows Settings -> Registry

<b>Anction:</b> Update <br />
<b>Hive:</b> HKEY_LOCAL_MACHINE <br />
<b>Key Path:</b> Software\Microsoft\Windows\CurrentVersion\Run <br />
<b>Value Name:</b> run_msg <br />
<b>Value Type:</b> REG_SZ <br />
<b>Value Data:</b> msg * from computer run </br>


<b>My windows server setup:</b> <br />

* [Windows Server 2022: Install File Server role and prepare a share for software deployment with GPO](https://youtu.be/jEWSdC2qwyA)
* [Windows Server 2022: Install DHCP server](https://youtu.be/8n0MD9stQis)
* [Windows Server 2022: Install Active Directory Domain Services (AD DS)](https://youtu.be/1cYewbW3Tl0)
