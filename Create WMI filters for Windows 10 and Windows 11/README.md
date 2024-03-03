# Group Policy: Create WMI filters for Windows 10 and Windows 11

<b>Create filters for:</b>

* Windows 10
* Windows 11

<b>Windows 10 wmi filter:</b>

```
SELECT Caption FROM Win32_OperatingSystem WHERE Caption LIKE "Microsoft Windows 10%"
```

<b>Windows 11 wmi filter:</b>

```
SELECT Caption FROM Win32_OperatingSystem WHERE Caption LIKE "Microsoft Windows 11%"
```

<b>gpresult command:</b>

```powershell
# For user policy troubleshooting
gpresult /SCOPE USER /R
# For user policy troubleshooting
gpresult /SCOPE COMPUTER /R
```

<b>powershell command for troubleshooting:</b>

```powershell
# For Windows 10
gwmi -Query 'SELECT Caption FROM Win32_OperatingSystem WHERE Caption LIKE "Microsoft Windows 10%"'
# For Windows 11 
gwmi -Query 'SELECT Caption FROM Win32_OperatingSystem WHERE Caption LIKE "Microsoft Windows 11%"'
# To check value
gwmi -Query 'SELECT Caption FROM Win32_OperatingSystem'
```

### Related videos

<b>Enviroment setup:</b> <br />

[Windows Server 2022: Install File Server role and prepare a share for software deployment with GPO](https://youtu.be/jEWSdC2qwyA) <br />
[Windows Server 2022: Install DHCP server](https://youtu.be/8n0MD9stQis) <br />
[Windows Server 2022: Install Active Directory Domain Services (AD DS)](https://youtu.be/1cYewbW3Tl0) <br />