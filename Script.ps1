# Cd to Temp Directory
Set-Location C:\Users\Aaxyat\.scrtmp\

# Download Powershell Profile and save to profile
Invoke-WebRequest --UseBacicParsing -outf Microsoft.PowerShell_profile.ps1 "https://raw.githubusercontent.com/aaxyat/Scripts/master/Microsoft.PowerShell_profile.ps1"
Move-Item .\Microsoft.PowerShell_profile.ps1 C:\Users\Aaxyat\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1

#install Chocolaty
Set-ExecutionPolicy Unrestricted -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

#install Chocolatry Items
choco install -y gsudo adb youtube-dl microsoft-windows-terminal

#Download and install ninite 
Invoke-WebRequest --UseBacicParsing -outf ninite.exe "http://files.ayushb.com/ninite.exe"
