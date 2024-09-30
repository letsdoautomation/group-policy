# Group Policy: Deploy Microsoft 365 Office - Online installation

<b>Downloads</b>

* [Office Deployment Tool](https://www.microsoft.com/en-us/download/details.aspx?id=49117)

<b>Documentation:</b>

* [Overview of the Office Deployment Tool](https://learn.microsoft.com/en-us/deployoffice/overview-office-deployment-tool)
* [Configuration options for the Office Deployment Tool](https://learn.microsoft.com/en-us/deployoffice/office-deployment-tool-configuration-options)
* [List of Product IDs that are supported by the Office Deployment Tool for Click-to-Run](https://learn.microsoft.com/en-us/microsoft-365/troubleshoot/installation/product-ids-supported-office-deployment-click-to-run)

<b>Objectives:</b>

* Use Wix Toolset to create Microsoft 365 .MSI installation file for deployment
   * Use group policy to perform machine deployment
   * Use group policy to perform user installation

<b>Generate package guid:</b>
```powershell
[guid]::NewGuid().guid
```

<b>Create .MSI package:</b>

```powershell
wix build m365-wix.wxs
```

### My enviroment setup

<b>WiX Toolset 4 CLI:</b> <br />
[Windows Tools: Download and install .NET 7 SDK and WiXtoolset 4 CLI tool](https://youtu.be/ukrIlmadTjw) <br />
[Group Policy: Packaging EXE into MSI for Group Policy software deployment using WiX toolset CLI](https://youtu.be/pZ42XS2Ucsg) <br />

<b>Group Policy and settings that i have configured in my servers and clients:</b> <br />
[Group Policy: Creating 32 and 64 bit WMI filters](https://youtu.be/ffBIiQaVXGM) <br />
[Group Policy: Always Wait for the Network at Computer Startup and Logon](https://youtu.be/8BF0rU7peNk) <br />
[Group Policy: Display highly detailed status messages](https://youtu.be/2LB51n4O1Lk) <br />
[Group Policy: Create an "Install a Program from the Network" desktop shortcut](https://youtu.be/s_pMiG0F0ho) <br />

<b>My windows server setup:</b> <br />
[Windows Server 2022: Install File Server role and prepare a share for software deployment with GPO](https://youtu.be/jEWSdC2qwyA) <br />
[Windows Server 2022: Install DHCP server](https://youtu.be/8n0MD9stQis) <br />
[Windows Server 2022: Install Active Directory Domain Services (AD DS)](https://youtu.be/1cYewbW3Tl0) <br />
