# Group Policy: Firefox deploy managed bookmarks

<b>Objectives:</b>

<b>Firefox deploy managed bookmarks:</b>

* Managed bookmarks
    * https://youtube.com
    * Search Engines
        * https://duckduckgo.com
        * https://bing.com
        * https://google.com
    * Social media
        * https://instagram.com
        * https://facebook.com

<b>Policy location:</b> Computer Configuration -> Policies -> Administrative Templates -> Mozilla -> Firefox

* <b>Policy name:</b> Managed Bookmarks (JSON on one line)

<b>Values:</b>

```powershell
@{
    toplevel_name = "Managed bookmarks"
},
@{
    name = "YouTube"
    url = "https://youtube.com"
},
@{
    children = 
    @{
        name = "DuckDuckGo"
        url = "https://duckduckgo.com"
    },
    @{
        name = "Bing"
        url = "https://bing.com"
    },
    @{
        name = "Google"
        url = "https://google.com"
    }
    name = "Search Engines"
},
@{
    children = 
    @{
        name = "Instagram"
        url = "https://instagram.com"
    },
    @{
        name = "Facebook"
        url = "https://facebook.com"
    }
    name = "Social media"
} | ConvertTo-JSON -depth 4 -Compress
```

### Related videos

<b>My windows server setup:</b> <br />

[Windows Server 2022: Install File Server role and prepare a share for software deployment with GPO](https://youtu.be/jEWSdC2qwyA) <br />
[Windows Server 2022: Install DHCP server](https://youtu.be/8n0MD9stQis) <br />
[Windows Server 2022: Install Active Directory Domain Services (AD DS)](https://youtu.be/1cYewbW3Tl0) <br />