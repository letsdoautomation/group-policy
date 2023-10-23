# Group Policy Software Deployment
<b>Download links:</b> <br /> 
* [Visual Studio Code](https://code.visualstudio.com/Download)

# Deployment setup
* Create Group Policy
    * Deploy installation exe to C:\programdata\deployment
        * Setup Item-Level targeting
    * Deploy RunOnce registry entry
        * Setup Item-Level targeting

# Policy settings
## File Deployment
<b>Action:</b> Update <br />
<b>Source File(s):</b> \\\\srv02\software\VSCode\VSCodeUserSetup-x64-1.83.1.exe <br />
<b>Destination File:</b> %CommonAppdataDir%\deployment\VSCode\VSCodeUserSetup-x64-1.83.1.exe

### Item-level targeting
<b>Registry Match</b><br />
<b>Match type:</b> Key Exists then switch to (does not exist) <br />
<b>Hive:</b> HKEY_CURRENT_USER <br />
<b>Key Path:</b> Software\Microsoft\Windows\CurrentVersion\Uninstall\\{771FD6B0-FA20-440A-A002-3B3BAC16DC50}_is1

## Registry Deployment
<b>Hive:</b> HKEY_CURRENT_USER <br />
<b>Key Path: </b> Software\Microsoft\Windows\CurrentVersion\RunOnce <br />
<b>Value Name: </b> InstallVSCode <br />
<b>Value Type: </b> REG_SZ <br />
<b>Value Data: </b> %CommonAppdataDir%\deployment\VSCode\VSCodeUserSetup-x64-1.83.1.exe /VERYSILENT /NORESTART /SUPPRESSMSGBOXES /MERGETASKS=!runcode

### Item-level targeting
<b>Registry Match</b><br />
<b>Match type:</b> Key Exists then switch to (does not exist) <br />
<b>Hive:</b> HKEY_CURRENT_USER <br />
<b>Key Path:</b> Software\Microsoft\Windows\CurrentVersion\Uninstall\\{771FD6B0-FA20-440A-A002-3B3BAC16DC50}_is1

# Related videos

<b>Windows registry</b>

[Windows Registry: Run and RunOnce](https://youtu.be/zgFzCq5uEPw) <br />

<b>Creating MSI</b>

[WiX toolset 4 CLI: Create Visual Studio Code MSI installation file](https://youtu.be/9hvCl7FJFJw)<br />

<b>My windows server setup</b>

[Windows Server 2022: Install File Server role and prepare a share for software deployment with GPO](https://youtu.be/jEWSdC2qwyA) <br />
[Windows Server 2022: Install DHCP server](https://youtu.be/8n0MD9stQis) <br />
[Windows Server 2022: Install Active Directory Domain Services (AD DS)](https://youtu.be/1cYewbW3Tl0) <br />
