# Group Policy Software Deployment
<b>Download links:</b> <br /> 
* [Ryver](https://ryver.com/downloads/)

# Deployment setup
* Create Group Policy
    * Deploy installation exe to C:\programdata\deployment
        * Set Item-Level targeting
    * Deploy RunOnce registry entry
        * Set Item-Level targeting

# Policy settings
## File Deployment
<b>Action:</b> Update <br />
<b>Source File(s):</b> \\\\srv02\software\Ryver\RyverSetup-1.3.2-x64.exe <br />
<b>Destination File:</b> %CommonAppdataDir%\deployment\Ryver\RyverSetup-1.3.2-x64.exe

### Item-level targeting
<b>Registry Match</b><br />
<b>Match type:</b> Key Exists then switch to (does not exist) <br />
<b>Hive:</b> HKEY_CURRENT_USER <br />
<b>Key Path:</b> Software\Microsoft\Windows\CurrentVersion\Uninstall\ryver

## Registry Deployment
<b>Hive:</b> HKEY_CURRENT_USER <br />
<b>Key Path: </b> Software\Microsoft\Windows\CurrentVersion\RunOnce <br />
<b>Value Name: </b> InstallRyver <br />
<b>Value Type: </b> REG_SZ <br />
<b>Value Data: </b> %CommonAppdataDir%\deployment\Ryver\RyverSetup-1.3.2-x64.exe -s

### Item-level targeting
<b>Registry Match</b><br />
<b>Match type:</b> Key Exists then switch to (does not exist) <br />
<b>Hive:</b> HKEY_CURRENT_USER <br />
<b>Key Path:</b> Software\Microsoft\Windows\CurrentVersion\Uninstall\ryver

# Related videos

<b>Windows registry</b>

[Windows Registry: Run and RunOnce](https://youtu.be/zgFzCq5uEPw) <br />

<b>Creating MSI</b>

[WiX toolset 4 CLI: Create Ryver MSI installation file](https://youtu.be/xEidNdMOR5A)<br />

<b>My windows server setup</b>

[Windows Server 2022: Install File Server role and prepare a share for software deployment with GPO](https://youtu.be/jEWSdC2qwyA) <br />
[Windows Server 2022: Install DHCP server](https://youtu.be/8n0MD9stQis) <br />
[Windows Server 2022: Install Active Directory Domain Services (AD DS)](https://youtu.be/1cYewbW3Tl0) <br />
