import-Module "C:\Program Files\Microsoft Dynamics 365 Business Central\180\Service\navAdminTool.ps1"

UnInstall-NavApp -ServerInstance BC180 -Name "ASL Upgrade Operation" -Version 14.5.1.77
Unpublish-NavApp -ServerInstance BC180 -Name "ASL Upgrade Operation" -Version 14.5.1.77

Publish-NAVApp -ServerInstance BC180 -Path "C:\Als\ASLPROJECTNEW\SSNL_ASL Upgrade Operation_14.5.1.78.app" -SkipVerification

Install-NAVApp -ServerInstance BC180 -Name "ASL Upgrade Operation" -Version 14.5.1.78
Start-NAVAppDataUpgrade 
Sync-NAVApp -ServerInstance BC180 -Name "ASL Upgrade Operation" -Version 14.5.1.78
Import-NavserverLicense -LicenseFile C:\LIC\Ssnl041122.flf -ServerInstance BC180
Restart-NAVServerInstance BC180