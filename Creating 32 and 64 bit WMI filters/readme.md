<p>WMI filters</p>

32 bit: SELECT AddressWidth FROM Win32_Processor WHERE AddressWidth ='32' <br />
64 bit: SELECT AddressWidth FROM Win32_Processor WHERE AddressWidth ='64' <br />

<p>gpresult command</p>

```powershell
gpresult /SCOPE COMPUTER /R
```

<p>To troubleshoot WMI</p>

```powershell
gwmi -Query "SELECT AddressWidth FROM Win32_Processor"
```
