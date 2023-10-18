# Documentation and download
Download link: [Brave](https://github.com/brave/brave-browser) <br />
Documentation link:  N/A

# Policy settings
## File Deployment
<b>Action:</b> Update <br />
<b>Source File(s):</b> \\\\srv02\software\Brave\BraveBrowserStandaloneSilentSetup.exe <br />
<b>Destination File:</b> %CommonAppdataDir%\deployment\brave\BraveBrowserStandaloneSilentSetup.exe

### File Deployment Item-level targeting
<b>Registry Match</b>: <br />
<b>Hive:</b> HKEY_CURRENT_USER\\<b>Software\BraveSoftware\Brave-Browser</b> does not exist

## Registry Deployment
<b>Hive:</b> HKEY_CURRENT_USER <br />
<b>Key Path: </b> Software\Microsoft\Windows\CurrentVersion\RunOnce <br />
<b>Value Name: </b> InstallBrave <br />
<b>Value Type: </b> REG_SZ <br />
<b>Value Data: </b> %CommonAppdataDir%\deployment\brave\BraveBrowserStandaloneSilentSetup.exe

### File Deployment Item-level targeting
<b>Registry Match</b>: <br />
<b>Hive:</b> HKEY_CURRENT_USER\\<b>Software\BraveSoftware\Brave-Browser</b> does not exist

# Related videos
<b>Windows registry</b>

[Windows Registry: Run and RunOnce](https://youtu.be/zgFzCq5uEPw) <br />
<b>Creating MSI</b>

[Silent software installation: Brave Browser](https://youtu.be/ZrYFDhK8wjk)<br />
<b>My windows server setup</b>

[Windows Server 2022: Install File Server role and prepare a share for software deployment with GPO](https://youtu.be/jEWSdC2qwyA) <br />
[Windows Server 2022: Install DHCP server](https://youtu.be/8n0MD9stQis) <br />
[Windows Server 2022: Install Active Directory Domain Services (AD DS)](https://youtu.be/1cYewbW3Tl0) <br />
