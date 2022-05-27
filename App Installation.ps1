import-Module "C:\Program Files\Microsoft Dynamics 365 Business Central\180\Service\navAdminTool.ps1"
Publish-NAVApp -ServerInstance HO365V18 -Path "C:\ALs\ASLPROJECTNEW\SSNL_ASL Upgrade Operation_18.0.1.9.app" -SkipVerification
Install-NAVApp -ServerInstance HO365V18 -Name "ASL Upgrade Operation" -Version 18.0.1.8
Sync-NAVApp -ServerInstance ETB-UAT -Name "ASL Upgrade Operation" -Version 18.0.1.8