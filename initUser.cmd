powershell.exe -ExecutionPolicy Bypass -NoLogo -NonInteractive -NoProfile 
  -WindowStyle Hidden -Command "New-ADUser -Name “Amine SEBAI” -GivenName Amine -Surname SEBAI -SamAccountName asebai -UserPrincipalName asebai@ingeniance.fr -AccountPassword (Read-Host -AsSecureString “Mot2P@ss”) -PassThru | Enable-ADAccount"
