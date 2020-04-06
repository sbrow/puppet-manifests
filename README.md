# Requirements

## Windows
1. Install chocolatey (Run in an administrator shell):
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```
2. Install puppet-agent
```powershell
choco install puppet-agent
```
3. Install `puppetlabs/chocolatey` module.
```powershell
puppet module install puppetlabs-chocolatey
```