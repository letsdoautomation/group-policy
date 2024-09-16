# Group Policy: Using user AD data as value in Windows Registry

<b>Request:</b>

<img src="img/request.png" width=100% height=100%>

<b>Video objective:</b>

* Take username from user object in AD and place it in Windows Registry

### Creating group policy

<b>Policy location:</b> User Configuration -> Preferences -> Windows Settings -> Registry

<b>Action:</b> Update
<b>Hive:</b> HKEY_CURRENT_USER
<b>Key Path:</b> Software\Microsoft\Office\Common\UserInfo
<b>Value name:</b> UserName
<b>Valye type:</b> REG_SZ
<b>Value data:</b> %var_sAMAccountName%

### Configuring item-level targeting

New Item -> LDAP Query

<b>Filter:</b> (&(objectClass=user)(sAMAccountName=%USERNAME%))
<b>Binding:</b> LDAP:
<b>Attribute:</b> sAMAccountName
<b>Environment variable name:</b> var_sAMAccountName

### Related videos

<b>My windows server setup:</b> <br />

[Windows Server 2022: Install File Server role and prepare a share for software deployment with GPO](https://youtu.be/jEWSdC2qwyA) <br />
[Windows Server 2022: Install DHCP server](https://youtu.be/8n0MD9stQis) <br />
[Windows Server 2022: Install Active Directory Domain Services (AD DS)](https://youtu.be/1cYewbW3Tl0) <br />