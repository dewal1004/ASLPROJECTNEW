iimport-Module "C:\Program Files\Microsoft Dynamics 365 Business Central\180\Service\navAdminTool.ps1"
Publish-NAVApp -ServerInstance BC180 -Path "C:\ASLHO\ASLPROJECTNEW\SSNL_ASL Upgrade Operation_14.5.1.10.app" -SkipVerification
Install-NAVApp -ServerInstance BC180 -Name "ASL Upgrade Operation" -Version 14.5.1.10
Sync-NAVApp -ServerInstance BC180 -Name "ASL Upgrade Operation" -Version 14.5.1.10