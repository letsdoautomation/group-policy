## Documentation and download
Download link: [Power BI](https://www.microsoft.com/en-US/download/details.aspx?id=58494) <br />
Documentation link: [Documentation](https://learn.microsoft.com/en-us/power-bi/fundamentals/desktop-get-the-desktop#use-command-line-options-during-installation)

## Path to File policy settings

<b>Policy path:</b> Computer Configuration > Preferences > Windows Settings > Files <br />

## For setup file deployment

<b>Source file(s):</b> \\\\srv02\software\powerbi\PBIDesktopSetup_x64.exe <br />
<b>Destination File:</b> %CommonAppdataDir%\deployment_files\powerbi\PBIDesktopSetup_x64.exe<br />

<img src="img/1.png" width=40% height=40%>

#### Item-level targeting
<b>Hive:</b> HKEY_LOCAL_MACHINE <br />
<b>Key path:</b> SOFTWARE\WOW6432Node\Microsoft\Microsoft Power BI Desktop <br />

##### AND
<b>Hive:</b> HKEY_LOCAL_MACHINE <br />
<b>Key path:</b> SOFTWARE\Microsoft\Microsoft Power BI Desktop <br />


<img src="img/2.png" width=40% height=40%>

## For script file deployment
<b>Policy path:</b> Computer Configuration > Preferences > Windows Settings > Files <br />

<b>Source file(s):</b> \\\\srv02\software\powerbi\run.ps1 <br />
<b>Destination File:</b> %CommonAppdataDir%\deployment_files\powerbi\run.ps1 <br />

<img src="img/3.png" width=40% height=40%>

#### Item-level targeting
<b>Hive:</b> HKEY_LOCAL_MACHINE <br />
<b>Key path:</b> SOFTWARE\WOW6432Node\Microsoft\Microsoft Power BI Desktop <br />

##### AND
<b>Hive:</b> HKEY_LOCAL_MACHINE <br />
<b>Key path:</b> SOFTWARE\Microsoft\Microsoft Power BI Desktop <br />

<img src="img/2.png" width=40% height=40%>

## Path to Scheduled Tasks policy settings

<b>Policy path:</b> Computer Configuration > Preferences > Control Panel Settings > Scheduled Tasks <br />

## For Scheduled Tasks deployment

<b>Name:</b> Deploy Power BI<br />
<b>When runing the task, use the following user account:</b> NT AUTHORITY\System

<img src="img/4.png" width=40% height=40%>

<img src="img/5.png" width=40% height=40%>

#### Action

<b>Program/Script:</b> powershell.exe <br />
<b>Add arguments(optional):</b> -ExecutionPolicy Bypass -File %ALLUSERSPROFILE%\deployment_files\powerbi\run.ps1 -Exe "%ALLUSERSPROFILE%\deployment_files\powerbi\PBIDesktopSetup_x64.exe" -ArgumentList "-silent -norestart ACCEPT_EULA=1" -Registry "HKLM:\SOFTWARE\Microsoft\Microsoft Power BI Desktop,HKLM:\SOFTWARE\WOW6432Node\Microsoft\Microsoft Power BI Desktop" <br />

<img src="img/6.png" width=40% height=40%>

#### Item-level targeting
<b>Hive:</b> HKEY_LOCAL_MACHINE <br />
<b>Key path:</b> SOFTWARE\WOW6432Node\Microsoft\Microsoft Power BI Desktop <br />

##### AND
<b>Hive:</b> HKEY_LOCAL_MACHINE <br />
<b>Key path:</b> SOFTWARE\Microsoft\Microsoft Power BI Desktop <br />

<img src="img/2.png" width=40% height=40%>

## For Scheduled Tasks removal

#### Item-level targeting
<b>Hive:</b> HKEY_LOCAL_MACHINE <br />
<b>Key path:</b> SOFTWARE\WOW6432Node\Microsoft\Microsoft Power BI Desktop <br />

##### OR
<b>Hive:</b> HKEY_LOCAL_MACHINE <br />
<b>Key path:</b> SOFTWARE\Microsoft\Microsoft Power BI Desktop <br />

<img src="img/7.png" width=40% height=40%>

## My enviroment setup
Group Policy and settings that i have configured in my servers and clients <br />
[Group Policy: Creating 32 and 64 bit WMI filters](https://youtu.be/ffBIiQaVXGM) <br />
[Group Policy: Always Wait for the Network at Computer Startup and Logon](https://youtu.be/8BF0rU7peNk) <br />
[Group Policy: Display highly detailed status messages](https://youtu.be/2LB51n4O1Lk) <br />
[Group Policy: Create an "Install a Program from the Network" desktop shortcut](https://youtu.be/s_pMiG0F0ho) <br />
My windows server setup: <br />
[Windows Server 2022: Install File Server role and prepare a share for software deployment with GPO](https://youtu.be/jEWSdC2qwyA) <br />
[Windows Server 2022: Install DHCP server](https://youtu.be/8n0MD9stQis) <br />
[Windows Server 2022: Install Active Directory Domain Services (AD DS)](https://youtu.be/1cYewbW3Tl0) <br />
