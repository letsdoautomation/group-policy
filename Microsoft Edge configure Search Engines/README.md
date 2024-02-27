# Group Policy: Microsoft Edge configure Search Engines

<b>Objectives:</b>

* Microsoft Edge configure Search Engines
    *  set duckduckgo as default search engine
    *  set bing as optional search engine
    *  set google as optional search engine

<b>Policy location:</b> Computer Configuration -> Policies -> Administrative Templates -> Microsoft Edge

<b>Policy name:</b> Manage Search Engines

<b>Values:</b>

```powershell
@{
    is_default = $true
    keyword = "duck"
    name = "duckduckgo.com"
    search_url = "https://duckduckgo.com/?q={searchTerms}"
},
@{
    keyword = "bing"
    name = "bing.com"
    search_url = "https://www.bing.com/search?q={searchTerms}"
},
@{
    keyword = "google"
    name = "google.com"
    search_url = "https://www.google.com/search?q={searchTerms}"
} | ConvertTo-Json -Compress
```

### Related videos

<b>Group Policy:</b> <br />

[Group Policy: Install ADMX Policy Templates for managing Microsoft Edge browser](https://youtu.be/0l6GYaL_ToU)

<b>My windows server setup:</b> <br />

[Windows Server 2022: Install File Server role and prepare a share for software deployment with GPO](https://youtu.be/jEWSdC2qwyA) <br />
[Windows Server 2022: Install DHCP server](https://youtu.be/8n0MD9stQis) <br />
[Windows Server 2022: Install Active Directory Domain Services (AD DS)](https://youtu.be/1cYewbW3Tl0) <br />
