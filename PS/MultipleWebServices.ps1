
import-Module "C:\Program Files\Microsoft Dynamics 365 Business Central\180\Service\navAdminTool.ps1"

Set-NAVWebServerInstanceConfiguration -WebServerInstance HO365Web -KeyName ClientServicesCredentialType -KeyValue Windows
Get-NAVWebServerInstance -WebServerInstance HOLive
Remove-NAVWebServerInstance -WebServerInstance HO365web
New-NAVWebServerInstance -WebServerInstance HOLive -Server localhost -ServerInstance HOLive -ClientServicesCredentialTyp Windows
