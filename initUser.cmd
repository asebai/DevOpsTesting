#ps1_x86

#-ExecutionPolicy Bypass -NoLogo -NonInteractive -NoProfile 
#  -WindowStyle Hidden -Command "New-ADUser -Name “Amine SEBAI” -GivenName Amine -Surname SEBAI -SamAccountName asebai -UserPrincipalName asebai@ingeniance.fr -AccountPassword (Read-Host -AsSecureString “Mot2P@ss”) -PassThru | Enable-ADAccount"

Write-Host "create user"
NET USER asebai "Mot2P@ss" /ADD


Write-Host "set user as administrator"
NET LOCALGROUP "Administrators" "asebai" /add


Write-Host "Installation IIS"
Add-WindowsFeature Web-Server -IncludeAllSubFeature
Write-Host "IIS installed"


Write-Host "let us test it now"
