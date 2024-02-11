# Group Policy: Microsoft Edge configure start page quick links

<b>Objectives:</b>

* Microsoft Edge configure start page quick links

<b>Policy location:</b> Computer Configuration -> Policies -> Administrative Templates -> Microsoft Edge -> Startup, home page and new tab page

* <b>Policy name:</b> Hide the default top sites from the new tab page
* <b>Policy name:</b> Set new tab page quick links


<b>Generate quick links json:</b>

```powershell
@{
    url    = "https://google.com"
    title  = "Google"
    pinned = $true
},
@{
    url    = "https://youtube.com"
    title  = "Youtube"
    pinned = $true
} | ConvertTo-Json -Compress
```


### Related videos

<b>Group Policy:</b> <br />

[Group Policy: Install ADMX Policy Templates for managing Microsoft Edge browser](https://youtu.be/0l6GYaL_ToU)

<b>My windows server setup:</b> <br />

[Windows Server 2022: Install File Server role and prepare a share for software deployment with GPO](https://youtu.be/jEWSdC2qwyA) <br />
[Windows Server 2022: Install DHCP server](https://youtu.be/8n0MD9stQis) <br />
[Windows Server 2022: Install Active Directory Domain Services (AD DS)](https://youtu.be/1cYewbW3Tl0) <br />