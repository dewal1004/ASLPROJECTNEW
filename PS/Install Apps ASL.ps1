import-Module "C:\Program Files\Microsoft Dynamics 365 Business Central\140\Service\navAdminTool.ps1"
Import-Module "C:\Program Files\Microsoft Dynamics NAV\70CU58\Service\navAdminTool.ps1"
Import-Module "${env:ProgramFiles(x86)}\Microsoft Dynamics NAV\80\RoleTailored Client\Microsoft.Dynamics.Nav.Model.Tools.psd1" -force

UnInstall-NavApp -ServerInstance ETB-UAT -Name "ASL Upgrade Operation" -Version 18.0.0.1
Unpublish-NavApp -ServerInstance ETB-UAT -Name "ASL Upgrade Operation" -Version 18.0.0.1

Publish-NAVApp -ServerInstance ETB-UAT -Path "C:\SSNL\extension\AA\SSNL_ASL Upgrade Operation_18.0.0.46.app" -SkipVerification
Sync-NAVApp -ServerInstance ETB-UAT -Name "ASL Upgrade Operation" -Version 18.0.0.46

Start-NAVAppDataUpgrade -name "ASL Upgrade Operation" -ServerInstance BC140

Sync-NAVTenant -ServerInstance ETB-UAT


Get-NAVAppInfo -ServerInstance ETB-UAT -SymbolsOnly

##UAT
import-Module "C:\Program Files\Microsoft Dynamics 365 Business Central\180\Service\navAdminTool.ps1"
UnInstall-NavApp -ServerInstance ETB-UAT -Name "ASL Upgrade Operation" -Version 18.0.0.1
Unpublish-NavApp -ServerInstance ETB-UAT -Name "ASL Upgrade Operation" -Version 18.0.0.1
publish-navapp -serverinstance ETB-UAT -Path 'C:\SSNL\extension\AA\SSNL_ASL Upgrade Operation_18.0.0.5.app' -Skipverification


Install-NAVApp -ServerInstance ETB-UAT -Name "ASL Upgrade Operation" -Version 18.0.0.5
Sync-NAVApp -ServerInstance ETB-UAT -Name "ASL Upgrade Operation" -Version 18.0.0.5
Start-NAVAppDataUpgrade -name "ASL Upgrade Operation" -ServerInstance ETB-UAT -Version 18.0.0.5

##LIVE
import-Module "C:\Program Files\Microsoft Dynamics 365 Business Central\180\Service\navAdminTool.ps1"
UnInstall-NavApp -ServerInstance BC180 -Name "ASL Upgrade Operation" -Version 18.0.0.1
Unpublish-NavApp -ServerInstance BC180 -Name "ASL Upgrade Operation" -Version 18.0.0.1
publish-navapp -serverinstance BC180 -Path 'C:\Downloads\Apps\SSNL_ASL Upgrade Operation_18.0.0.5.app' -Skipverification
#Install-NAVApp -ServerInstance BC180 -Name "ASL Upgrade Operation" -Version 18.0.0.5
Sync-NAVApp -ServerInstance BC180 -Name "ASL Upgrade Operation" -Version 18.0.0.5
Start-NAVAppDataUpgrade -name "ASL Upgrade Operation" -ServerInstance BC180 -Version 18.0.0.5

##UAT ASL HO
import-Module "C:\Program Files\Microsoft Dynamics 365 Business Central\180\Service\navAdminTool.ps1"
UnInstall-NavApp -ServerInstance HO365V18 -Name "ASL Upgrade Operation" -Version 18.0.1.5
Unpublish-NavApp -ServerInstance HO365V18 -Name "ASL Upgrade Operation" -Version 18.0.1.5

publish-navapp -serverinstance HO365V18 -Path 'C:\ALs\ASLPROJECTNEW\SSNL_ASL Upgrade Operation_18.0.1.6.app' -Skipverification
#Install-NAVApp -ServerInstance HO365V18 -Name "ASL Upgrade Operation" -Version 18.0.0.6
Sync-NAVApp -ServerInstance HO365V18 -Name "ASL Upgrade Operation" -Version 18.0.1.6
Start-NAVAppDataUpgrade -name "ASL Upgrade Operation" -ServerInstance HO365V18 -Version 18.0.1.6
