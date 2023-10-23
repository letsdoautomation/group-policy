# Group Policy Software Deployment
<b>Download links:</b> <br /> 
* [Telegram](https://desktop.telegram.org/)

# Policy settings
## File Deployment
<b>Action:</b> Update <br />
<b>Source File(s):</b> \\\\srv02\software\Telegram\tsetup-x64.4.10.2.exe <br />
<b>Destination File:</b> %CommonAppdataDir%\deployment\Telegram\tsetup-x64.4.10.2.exe

# Deployment setup
* Create Group Policy
    * Deploy installation exe to C:\programdata\deployment
        * Setup Item-Level targeting
    * Deploy RunOnce registry entry
        * Setup Item-Level targeting

### Item-level targeting
<b>Registry Match</b><br />
<b>Match type:</b> Key Exists then switch to (does not exist) <br />
<b>Hive:</b> HKEY_CURRENT_USER <br />
<b>Key Path:</b> Software\Microsoft\Windows\CurrentVersion\Uninstall\{53F49750-6209-4FBF-9CA8-7A333C87D1ED}_is1

## Registry Deployment
<b>Hive:</b> HKEY_CURRENT_USER <br />
<b>Key Path: </b> Software\Microsoft\Windows\CurrentVersion\RunOnce <br />
<b>Value Name: </b> InstallTelegram <br />
<b>Value Type: </b> REG_SZ <br />
<b>Value Data: </b> %CommonAppdataDir%\deployment\Telegram\tsetup-x64.4.10.2.exe /VERYSILENT /NORESTART

### Item-level targeting
<b>Registry Match</b><br />
<b>Match type:</b> Key Exists then switch to (does not exist) <br />
<b>Hive:</b> HKEY_CURRENT_USER <br />
<b>Key Path:</b> Software\Microsoft\Windows\CurrentVersion\Uninstall\{53F49750-6209-4FBF-9CA8-7A333C87D1ED}_is1

# Related videos

<b>Windows registry</b>

[Windows Registry: Run and RunOnce](https://youtu.be/zgFzCq5uEPw) <br />

<b>Creating MSI</b>

[WiX toolset 4 CLI: Create Telegram MSI installation file](https://youtu.be/wDiuEd88Ovc)<br />

<b>My windows server setup</b>

[Windows Server 2022: Install File Server role and prepare a share for software deployment with GPO](https://youtu.be/jEWSdC2qwyA) <br />
[Windows Server 2022: Install DHCP server](https://youtu.be/8n0MD9stQis) <br />
[Windows Server 2022: Install Active Directory Domain Services (AD DS)](https://youtu.be/1cYewbW3Tl0) <br />
