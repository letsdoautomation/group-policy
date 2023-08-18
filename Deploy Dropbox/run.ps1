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

$registry_check = ($registry -split ",").trim() | ? { Test-Path $_ }

if ($null -ne $registry_check) {
    $install_params = @{
        FilePath     = $Exe.FullName
        ArgumentList = $ArgumentList
        NoNewWindow  = $true
        Wait         = $true
    }
    Start-Process @install_params
}