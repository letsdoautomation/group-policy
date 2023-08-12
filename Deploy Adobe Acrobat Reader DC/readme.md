### Documentation and download
Download link: [Adobe Acrobat Reader DC](https://get.adobe.com/reader/enterprise/) <br />
Documentation link:  [Documentation](https://www.adobe.com/devnet-docs/acrobatetk/tools/VirtualizationGuide/cmdline.html#msi-support)  <br />
MSI parameters: [Documentation](https://www.adobe.com/devnet-docs/acrobatetk/tools/AdminGuide/properties.html#command-line-example)

#### Extract MSI files
```powershell
cmd /c D:\Downloads\AcroRdrDC2300320269_en_US.exe -sfx_o"D:\Downloads\Reader" -sfx_ne
```
#### Create administrative installation point
```powershell
cmd /c msiexec /a "D:\Downloads\Reader\AcroRead.msi" TARGETDIR="D:\Downloads\Reader_deployment"
```
#### Update administrative installation point
```powershell
cmd /c msiexec /a "D:\Downloads\Reader_deployment\AcroRead.msi" /p "D:\Downloads\Reader\AcroRdrDCUpd2300320269.msp" TARGETDIR="D:\Downloads\Reader_deployment"
```

#### (OPTIONAL)MSI settings
```powershell
EULA_ACCEPT = 1
DISABLEDESKTOPSHORTCUT = 1
```

### My enviroment setup
[Windows tools: Download and install Orca MSI file editor](https://youtu.be/dFKwxNZ8PXY) <br />
Group Policy and settings that i have configured in my servers and clients <br />
[Group Policy: Creating 32 and 64 bit WMI filters](https://youtu.be/ffBIiQaVXGM) <br />
[Group Policy: Always Wait for the Network at Computer Startup and Logon](https://youtu.be/8BF0rU7peNk) <br />
[Group Policy: Display highly detailed status messages](https://youtu.be/2LB51n4O1Lk) <br />
[Group Policy: Create an "Install a Program from the Network" desktop shortcut](https://youtu.be/s_pMiG0F0ho) <br />
My windows server setup: <br />
[Windows Server 2022: Install File Server role and prepare a share for software deployment with GPO](https://youtu.be/jEWSdC2qwyA) <br />
[Windows Server 2022: Install DHCP server](https://youtu.be/8n0MD9stQis) <br />
[Windows Server 2022: Install Active Directory Domain Services (AD DS)](https://youtu.be/1cYewbW3Tl0) <br />
