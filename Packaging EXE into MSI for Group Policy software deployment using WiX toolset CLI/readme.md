### Documentation and download

WiX Toolset 4 CLI video: [Windows Tools: Download and install .NET 7 SDK and WiXtoolset 4 CLI tool](https://youtu.be/ukrIlmadTjw) <br />

Download link: [VLC](https://www.videolan.org/) <br />
Download link: [Visual Studio Code](https://code.visualstudio.com/Download) <br />


#### vscode silent parameters
```powershell
/VERYSILENT /NORESTART /SUPPRESSMSGBOXES /MERGETASKS=!runcode
```

#### vlc silent parameters
```powershell
/S
```

#### generate guid
```powershell
[guid]::NewGuid().guid
```

#### wix build command
```powershell
wix build VLC.wxs
wix build vscode.wxs
```
