# PowerShell: Microsoft Edge force install Progressive Web Apps (PWA)

<b>Objective:</b>

* Microsoft Edge force install Progressive Web Apps (PWA)
    * Install Twitter
    * Install Telegram
    * Install Spotify

<b>Policy location:</b> Computer Configuration -> Policies -> Administrative Templates -> Microsoft Edge

<b>Policy name:</b> Configure list of force-installed Web Apps

<b>Values:</b>

```powershell
@{
    create_desktop_shortcut  = $true
    default_launch_container = "window"  
    url                      = "https://twitter.com/"
},
@{
    create_desktop_shortcut  = $true
    default_launch_container = "window"  
    url                      = "https://web.telegram.org/"
},
@{
    create_desktop_shortcut  = $true
    default_launch_container = "window"  
    url                      = "https://open.spotify.com/"
} | ConvertTo-Json -Compress
```

### Related videos

<b>My windows server setup:</b> <br />

[Windows Server 2022: Install File Server role and prepare a share for software deployment with GPO](https://youtu.be/jEWSdC2qwyA) <br />
[Windows Server 2022: Install DHCP server](https://youtu.be/8n0MD9stQis) <br />
[Windows Server 2022: Install Active Directory Domain Services (AD DS)](https://youtu.be/1cYewbW3Tl0) <br />