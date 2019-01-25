Get-ExecutionPolicy Bypass -Scope Process -Force
[System.Environment]::SetEnvironmentVariable(
    "repos",
    "$env:USERPROFILE\source\repos",
    [System.EnvironmentVariableTarget]::User)

Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh'))
scoop install concfg | Write-Host
concfg import solarized small | Write-Host
scoop install cmder | Write-Host
scoop install 7zip | Write-Host
scoop install git | Write-Host
scoop install grep | Write-Host
scoop install openssh | Write-Host
scoop install pshazz | Write-Host
scoop install nano | Write-Host
scoop install zip | Write-Host

Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco install foxitreader -y | Write-Host
choco install qbittorrent -y | Write-Host
choco install firefox -y | Write-Host
choco install vlc -y | Write-Host
choco install vscode -y | Write-Host
choco install spotify -y | Write-Host
choco install dotnetcore-sdk 2.2.0 -y | Write-Host
choco install sysinternals -y | Write-Host

$gamingSoft = Read-Host "Install gaming soft y/n?"
if ($gamingSoft -eq 'y') {
    choco install steam -y | Write-Host
    choco install teamspeak -y | Write-Host
    choco install geforce-game-ready-driver -y | Write-Host
}
