$wix = [PSCustomObject]@{
    name       = "Notepad++"
    exe        = "C:\npp.8.5.4.Installer.x64.exe"
    version    = "8.5.4"
    publisher  = "letsdoautomation"
    silentArgs = "/S"
}

@'
<?define name = "{0}"?>
<?define exe = "{5}"?>
<?define silentArgs = {6}?>
<?define version = "{1}"?>
<?define publisher = "{4}"?>
<?define guid = "{3}"?>

<Wix xmlns="http://wixtoolset.org/schemas/v4/wxs">
        <Package Name="$(var.name)" Manufacturer="$(var.publisher)" Version="$(var.version)"
                UpgradeCode="$(var.guid)">

                <Media Id="1" Cabinet="setup.cab" EmbedCab="yes" />

                <Feature Id="InstallFeature" Title="Install Feature">
                        <ComponentRef Id="component" />
                </Feature>

                <CustomAction Id="run_exe" Return="ignore" Execute="deferred"
                        ExeCommand="{2} $(var.silentArgs)" HideTarget="no" Impersonate="no"
                        FileRef="File0" />

                <InstallExecuteSequence>
                        <Custom Action="run_exe" After="InstallFiles"
                                Condition="NOT REMOVE~=&quot;ALL&quot;" />
                </InstallExecuteSequence>

                <StandardDirectory Id="TempFolder">
                        <Directory Id="INSTALLLOCATION" Name="~_tmpdir">
                                <Component Id="component" DiskId="1" >
                                        <File Id="File0" Name="{2}"
                                                Source="$(var.exe)" />
                                </Component>
                        </Directory>
                </StandardDirectory>
        </Package>
</Wix>
'@ -f $wix.name, $wix.version, ([System.IO.FileInfo]$wix.exe).Name, [guid]::NewGuid().guid, $wix.publisher, $wix.exe, $wix.silentArgs | Out-File ".\$($wix.name).wxs" -Encoding utf8 -Force