import-Module "C:\Program Files\Microsoft Dynamics 365 Business Central\180\Service\navAdminTool.ps1"

UnInstall-NavApp -ServerInstance BC180 -Name "ASL Upgrade Operation" -Version 14.5.1.90
Unpublish-NavApp -ServerInstance BC180 -Name "ASL Upgrade Operation" -Version 14.5.1.90

Publish-NAVApp -ServerInstance BC180 -Path "C:\Als\ASLPROJECTNEW\SSNL_ASL Upgrade Operation_14.5.1.92.app" -SkipVerification
Import-NavserverLicense -LicenseFile C:\LIC\SSNL36505.flf -ServerInstance BC180
Restart-NAVServerInstance BC180

Install-NAVApp -ServerInstance BC180 -Name "ASL Upgrade Operation" -Version 14.5.1.92
Start-NAVAppDataUpgrade 
Sync-NAVApp -ServerInstance BC180 -Name "ASL Upgrade Operation" -Version 14.5.1.88
Import-NavserverLicense -LicenseFile C:\LIC\Shod36504.flf -ServerInstance BC180
Restart-NAVServerInstance BC180