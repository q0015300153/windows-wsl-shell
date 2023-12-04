# https://learn.microsoft.com/zh-tw/windows/wsl/install-manual#downloading-distributions

$local = (get-location).path
if (!(Test-Path -Path "$local/ubuntu.appx" -PathType Leaf))
{
    curl.exe -L -o ubuntu.appx https://aka.ms/wslubuntu2004
    Add-AppxPackage ubuntu.appx
}