# Group Policy: Windows 11 pin software to taskbar

<b>Documentation:</b>

* [Configure Windows Taskbar](https://learn.microsoft.com/en-us/windows/configuration/taskbar/?pivots=windows-11)
* [Find the Application User Model ID of an installed app](https://learn.microsoft.com/en-us/windows/configuration/store/find-aumid?tabs=ps)

<b>Policy location:</b> Computer Configuration -> Administrative Templates -> Start Menu and Taskbar <br />
<b>Policy name:</b> Start layout

<b>Taskbar layout sample:</b>

```xml
<?xml version="1.0" encoding="utf-8"?>
<LayoutModificationTemplate
    xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification"
    xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout"
    xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout"
    xmlns:taskbar="http://schemas.microsoft.com/Start/2014/TaskbarLayout"
    Version="1">
  <CustomTaskbarLayoutCollection PinListPlacement="Replace">
    <defaultlayout:TaskbarLayout>
      <taskbar:TaskbarPinList>
        <taskbar:DesktopApp DesktopApplicationID="Microsoft.WindowsTerminal_8wekyb3d8bbwe!app" />
        <taskbar:DesktopApp DesktopApplicationID="Microsoft.Windows.Explorer" />
        <taskbar:DesktopApp DesktopApplicationLinkPath="C:\Program Files\Google\Chrome\Application\chrome.exe" />
      </taskbar:TaskbarPinList>
    </defaultlayout:TaskbarLayout>
 </CustomTaskbarLayoutCollection>
</LayoutModificationTemplate>
```

<b>Show packagedAppId for Windows store apps:</b>

```powershell
Get-AppxPackage | select @{n='name';e={"$($_.PackageFamilyName)!app"}} | ?{$_.name -like "**"}
```

### Related videos

<b>Group policy:</b>

[Group policy: Install updated ADMX Policy Templates for managing Windows 11](https://youtu.be/TRaaY_7u7cw)

<b>WMI filters:<b> <br />

[Group Policy: Create WMI filters for Windows 10 and Windows 11](https://youtu.be/7k_kpaLpMI8)

<b>My windows server setup:</b> <br />

[Windows Server 2022: Install File Server role and prepare a share for software deployment with GPO](https://youtu.be/jEWSdC2qwyA) <br />
[Windows Server 2022: Install DHCP server](https://youtu.be/8n0MD9stQis) <br />
[Windows Server 2022: Install Active Directory Domain Services (AD DS)](https://youtu.be/1cYewbW3Tl0) <br />