[CmdletBinding()]
param(
    [Parameter(Mandatory)]
    [System.IO.FileInfo]$Exe,
    [string]$ArgumentList,
    [Parameter(Mandatory)]
    [string]$Registry
)

if (!$Exe.Exists) {
    exit 0
}

if ($null -ne $registry -and !(Test-Path $registry)) {
    $install_params = @{
        FilePath     = $Exe.FullName
        ArgumentList = $ArgumentList
        NoNewWindow  = $true
        Wait         = $true
    }
    Start-Process @install_params
}