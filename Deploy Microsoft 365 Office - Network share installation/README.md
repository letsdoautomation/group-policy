# Group Policy: Deploy Microsoft 365 Office - Network share installation

<b>Downloads</b>

* [Office Deployment Tool](https://www.microsoft.com/en-us/download/details.aspx?id=49117)

<b>Documentation:</b>

* [Overview of the Office Deployment Tool](https://learn.microsoft.com/en-us/deployoffice/overview-office-deployment-tool)
* [Configuration options for the Office Deployment Tool](https://learn.microsoft.com/en-us/deployoffice/office-deployment-tool-configuration-options)
* [List of Product IDs that are supported by the Office Deployment Tool for Click-to-Run](https://learn.microsoft.com/en-us/microsoft-365/troubleshoot/installation/product-ids-supported-office-deployment-click-to-run)

<b>Objectives:</b>

* Deploy Microsoft Office 365 using group policy (Online Installation from Network share)
    * Use Wix Toolset to create .MSI installation file


<b>Generate package guid:</b>
```powershell
[guid]::NewGuid().guid
```

<b>Create .MSI package:</b>

```powershell
wix build m365-wix.wxs
```

### Related videos

<b>WiX toolset 4 CLI:</b>

[WiX toolset 4 CLI: Create Microsoft Office MS365 MSI installation file]()

<b>My windows server setup:</b>

[Windows Server 2022: Install File Server role and prepare a share for software deployment with GPO](https://youtu.be/jEWSdC2qwyA) <br />
[Windows Server 2022: Install DHCP server](https://youtu.be/8n0MD9stQis) <br />
[Windows Server 2022: Install Active Directory Domain Services (AD DS)](https://youtu.be/1cYewbW3Tl0) <br />