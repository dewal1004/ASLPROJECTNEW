https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/upgrade/upgrade-to-microsoft-base-app-v18#task-14-synchronize-final-extensions
# Upgrading Customized C/AL Application to Microsoft Base Application Version 18

import-Module "C:\Program Files\Microsoft Dynamics 365 Business Central\180\Service\navAdminTool.ps1"

##7: Convert version 14 database
# With BC Admin Shell version 18 (Run as Admin)
# Invoke-NAVApplicationDatabaseConversion -DatabaseServer <database server name>\<database server instance> -DatabaseName "<database name>"

$DbSrvrName = 'NAV365TEST\ASLHO2016'
$SrvrInstName = 'BC180'
$DbName = "Atlantic ASL V18fromV14"
$TabMigrExtId = "9cb1232b-94cb-4aa6-bab3-c15ec6ea7bc0"
$TabMigrExtName = "bc14baseapptablesonly"
$TabMigrExtPubr = "SSNL"
$LicenseFilePath = "C:\LIC\SSNL365V180122.flf"



##7,8&9
Invoke-NAVApplicationDatabaseConversion -DatabaseServer NAV365TEST\ASLHO2016 -DatabaseName "Atlantic ASL V18fromV14"
# Set-NAVServerConfiguration -ServerInstance <server instance name?> -KeyName DatabaseName -KeyValue "<database name>"
Set-NAVServerConfiguration -ServerInstance BC180 -KeyName DatabaseName -KeyValue "Atlantic ASL V18fromV14"
Set-NAVServerConfiguration -ServerInstance BC180 -KeyName "DestinationAppsForMigration" -KeyValue '[{"appId": "9cb1232b-94cb-4aa6-bab3-c15ec6ea7bc0", "name":"bc14baseapptablesonly", "publisher": "SSNL"}]'
Set-NavServerConfiguration -ServerInstance BC180 -KeyName "EnableTaskScheduler" -KeyValue false

Import-NAVServerLicense -ServerInstance BC180 -LicenseFile "C:\LIC\SSNL365V19.flf"
Restart-NAVServerInstance -ServerInstance BC180


##10: Publish DestinationAppsForMigrations extensions
# Publish the first version of the table migration extension, which is the version that contains the table objects.
Publish-NAVApp -ServerInstance bc180 -Path "C:\ALs\MSMigrationExtCus\SSNL_bc14baseapptablesonly_14.0.0.0.app" -skipverification

# Publish the empty versions of the following extensions:
Publish-NAVApp -ServerInstance bc180 -Path "C:\ALs\EmptyMSSysApp\Microsoft_System Application_14.0.0.0.app" -skipverification
Publish-NAVApp -ServerInstance bc180 -Path "C:\ALs\EmptyMSBASEAPP\Microsoft_Base Application_14.0.0.0.app"  -skipverification
Publish-NAVApp -ServerInstance bc180 -Path "C:\ALs\EmptyMSCustApp\SSNL_ASL Upgrade Operation_14.0.0.0.app"  -skipverification
Restart-NAVServerInstance -ServerInstance BC180

##11: Synchronize tenant
# Mount-NAVTenant -ServerInstance <server instance name?> -DatabaseName <database name> -DatabaseServer <database server>\<database instance> -Tenant <tenant ID?> -AllowAppDatabaseWrite
Sync-NAVTenant -ServerInstance BC180 -Mode Sync 
Sync-NAVApp -ServerInstance BC180 -Name "bc14baseapptablesonly" -Version 14.0.0.0
Get-NAVTenant BC180  -ForceRefresh
# Synchronize the empty versions of system application, base application, and customization extensions that you published in#8.
Sync-NAVApp -ServerInstance BC180 -Name "System Application" -Version 14.0.0.0
Sync-NAVApp -ServerInstance BC180 -Name "Base Application" -Version 14.0.0.0
Sync-NAVApp -ServerInstance BC180 -Name "ASL Upgrade Operation" -Version 14.0.0.0

##12: Install DestinationAppsForMigration and move tables
Start-NAVDataUpgrade -ServerInstance BC180 -Tenant default -FunctionExecutionMode Serial -SkipAppVersionCheck
Get-NavDataUpgrade  -Progress

# Install the empty versions of the system, base, and custom extensions that you published in Task 8.
Install-NAVApp -ServerInstance BC180 -Name "System Application" -Version 14.0.0.0
Install-NAVApp -ServerInstance BC180 -Name "Base Application" -Version 14.0.0.0
Install-NAVApp -ServerInstance BC180 -Name "ASL Upgrade Operation" -Version 14.0.0.0

##13: Publish final extensions
# Publish-NAVApp -ServerInstance <server instance name?> -Path "<path to extension .app file>"
Publish-NAVApp -ServerInstance bc180 -Path "C:\ALs\MSMigrationExtCus\SSNL_bc14baseapptablesonly_14.0.0.1.app" -skipverification
Publish-NAVApp -ServerInstance bc180 -Path "C:\BC365V185\Applications\system application\source\Microsoft_System Application.app"
Publish-NAVApp -ServerInstance bc180 -Path "C:\BC365V185\Applications\BaseApp\Source\Microsoft_Base Application.app"
Publish-NAVApp -ServerInstance bc180 -Path "C:\ALs\ASLPROJECTNEW-1\SSNL_ASL Upgrade Operation_14.5.1.1.app"  -SkipVerification
##13.5: Application extension.
Publish-NAVApp -ServerInstance bc180 -Path "C:\BC365V185\Applications\Application\Source\Microsoft_Application.app"
##13.6: Microsoft and third-party extensions.
Publish-NAVApp -ServerInstance bc180 -Path "C:\BC365V185\Applications\CompanyHub\Source\Microsoft_Company Hub.app"
Publish-NAVApp -ServerInstance bc180 -Path "C:\BC365V185\Applications\datacorrectionfa\source\Microsoft_Troubleshoot FA Ledger Entries.app"
Publish-NAVApp -ServerInstance bc180 -Path "C:\BC365V185\Applications\Email - Current User Connector\Source\Microsoft_Email - Current User Connector.app"
Publish-NAVApp -ServerInstance bc180 -Path "C:\BC365V185\Applications\Email - Microsoft 365 Connector\Source\Microsoft_Email - Microsoft 365 Connector.app"
Publish-NAVApp -ServerInstance bc180 -Path "C:\BC365V185\Applications\Email - Outlook REST API\Source\Microsoft_Email - Outlook REST API.app"
Publish-NAVApp -ServerInstance bc180 -Path "C:\BC365V185\Applications\Email - SMTP Connector\Source\Microsoft_Email - SMTP Connector.app"
Publish-NAVApp -ServerInstance bc180 -Path "C:\BC365V185\Applications\EssentialBusinessHeadlines\Source\Microsoft_Essential Business Headlines.app"
Publish-NAVApp -ServerInstance bc180 -Path "C:\BC365V185\Applications\LatePaymentPredictor\Source\Microsoft_Late Payment Prediction.app"
Publish-NAVApp -ServerInstance bc180 -Path "C:\BC365V185\Applications\microsoftuniversalprint\source\Microsoft_Universal Print Integration (Preview).app"
Publish-NAVApp -ServerInstance bc180 -Path "C:\BC365V185\Applications\paypalpaymentsstandard\source\Microsoft_PayPal Payments Standard.app"
Publish-NAVApp -ServerInstance bc180 -Path "C:\BC365V185\Applications\salesandinventoryforecast\source\Microsoft_Sales and Inventory Forecast.app"
Publish-NAVApp -ServerInstance bc180 -Path "C:\BC365V185\Applications\sendtoemailprinter\source\Microsoft_Send To Email Printer.app"
Publish-NAVApp -ServerInstance bc180 -Path "C:\BC365V185\Applications\sendtoemailprinter\source\Microsoft_Send To Email Printer.app"
Publish-NAVApp -ServerInstance bc180 -Path "C:\BC365V185\Applications\vatgroupmanagement\source\Microsoft_VAT Group Management.app"

##14: Synchronize final extensions
# Sync-NAVApp -ServerInstance <server instance name?> -Tenant <tenant ID?> -Name "<extension name>" -Version <extension version?>
# Microsoft System Application, Base Application & Application
Sync-NAVApp -ServerInstance BC180 -Tenant default -Name "System Application" -Version 18.5.29545.0
Sync-NAVApp -ServerInstance BC180 -Tenant default -Name "Base Application" -Version 18.5.29545.0
Sync-NAVApp -ServerInstance BC180 -Tenant default -Name "Application" -Version 18.5.29545.0
##14.4: Microsoft and third-party extensions
Get-NAVAppInfo -ServerInstance BC180  | Where-Object {$_.Version -eq '18.5.29545.0'} | ForEach-Object { Sync-NAVApp -ServerInstance BC180 -Name $_.Name -Version $_.Version }

# ****>
##14.5: Customization extensions
Sync-NAVApp -ServerInstance BC180 -Name "ASL Upgrade Operation" -Version 14.5.1.1
##14.6: Second version of the table migration extension (empty version)
Sync-NAVApp -ServerInstance bc180 -Name "bc14baseapptablesonly" -Version 14.0.0.1

##15: Upgrade empty table migration extension
Start-NAVAppDataUpgrade -ServerInstance BC180 -Name "bc14baseapptablesonly" -version 14.0.0.1

##16: Clean sync and unpublish table migration extensions
Uninstall-NAVApp -ServerInstance BC180 -Tenant default -Name "<table migration extension>" -Version 14.0.0.1
Sync-NAVApp -ServerInstance BC180 -Tenant default -Name "<table migration extension>" -Version 14.0.0.1 -Mode clean
Unpublish-NAVApp -ServerInstance BC180 -Tenant default -Name "<table migration extension>" -Version 14.0.0.1
Unpublish-NAVApp -ServerInstance BC180 -Tenant default -Name "<table migration extension>" -Version 14.0.0.0

# Task 17: Upgrade and install final extensions
#  Use the Start-NAVAppDataUpgrade or Install-NAVApp cmdlets
# Upgrade the Microsoft System Application extension & Base Application extension.
Start-NAVAppDataUpgrade -ServerInstance BC180 -Name "System Application" -version 18.5.29545.0
Start-NAVAppDataUpgrade -ServerInstance BC180 -Name "Base Application" -version 18.5.29545.0
# Install the Microsoft Application extension
Install-NAVApp -ServerInstance BC180 -Name "Application" -Version 18.5.29545.0
# Upgrade customization extensions, Microsoft, and third-party extensions.
Start-NAVAppDataUpgrade -ServerInstance BC180 -Name "ASL Upgrade Operation" -version 14.5.1.1
Get-NAVAppInfo -ServerInstance BC180  | Where-Object {$_.Version -eq '18.5.29545.0'} | ForEach-Object {Start-NAVAppDataUpgrade -ServerInstance BC180 -Name $_.Name -Version $_.Version }

# Task 18: Upgrade control add-ins
$InstanceName = 'BC180'
$ServicesAddinsFolder = 'C:\Program Files\Microsoft Dynamics 365 Business Central\180\Service\Add-ins'
Set-NAVAddIn -ServerInstance $InstanceName -AddinName 'Microsoft.Dynamics.Nav.Client.BusinessChart' -PublicKeyToken 31bf3856ad364e35 -ResourceFile ($AppName = Join-Path $ServicesAddinsFolder 'BusinessChart\Microsoft.Dynamics.Nav.Client.BusinessChart.zip')
Set-NAVAddIn -ServerInstance $InstanceName -AddinName 'Microsoft.Dynamics.Nav.Client.FlowIntegration' -PublicKeyToken 31bf3856ad364e35 -ResourceFile ($AppName = Join-Path $ServicesAddinsFolder 'FlowIntegration\Microsoft.Dynamics.Nav.Client.FlowIntegration.zip')
Set-NAVAddIn -ServerInstance $InstanceName -AddinName 'Microsoft.Dynamics.Nav.Client.OAuthIntegration' -PublicKeyToken 31bf3856ad364e35 -ResourceFile ($AppName = Join-Path $ServicesAddinsFolder 'OAuthIntegration\Microsoft.Dynamics.Nav.Client.OAuthIntegration.zip')
Set-NAVAddIn -ServerInstance $InstanceName -AddinName 'Microsoft.Dynamics.Nav.Client.PageReady' -PublicKeyToken 31bf3856ad364e35 -ResourceFile ($AppName = Join-Path $ServicesAddinsFolder 'PageReady\Microsoft.Dynamics.Nav.Client.PageReady.zip')
Set-NAVAddIn -ServerInstance $InstanceName -AddinName 'Microsoft.Dynamics.Nav.Client.PowerBIManagement' -PublicKeyToken 31bf3856ad364e35 -ResourceFile ($AppName = Join-Path $ServicesAddinsFolder 'PowerBIManagement\Microsoft.Dynamics.Nav.Client.PowerBIManagement.zip')
Set-NAVAddIn -ServerInstance $InstanceName -AddinName 'Microsoft.Dynamics.Nav.Client.RoleCenterSelector' -PublicKeyToken 31bf3856ad364e35 -ResourceFile ($AppName = Join-Path $ServicesAddinsFolder 'RoleCenterSelector\Microsoft.Dynamics.Nav.Client.RoleCenterSelector.zip')
Set-NAVAddIn -ServerInstance $InstanceName -AddinName 'Microsoft.Dynamics.Nav.Client.SatisfactionSurvey' -PublicKeyToken 31bf3856ad364e35 -ResourceFile ($AppName = Join-Path $ServicesAddinsFolder 'SatisfactionSurvey\Microsoft.Dynamics.Nav.Client.SatisfactionSurvey.zip')
Set-NAVAddIn -ServerInstance $InstanceName -AddinName 'Microsoft.Dynamics.Nav.Client.SocialListening' -PublicKeyToken 31bf3856ad364e35 -ResourceFile ($AppName = Join-Path $ServicesAddinsFolder 'SocialListening\Microsoft.Dynamics.Nav.Client.SocialListening.zip')
Set-NAVAddIn -ServerInstance $InstanceName -AddinName 'Microsoft.Dynamics.Nav.Client.VideoPlayer' -PublicKeyToken 31bf3856ad364e35 -ResourceFile ($AppName = Join-Path $ServicesAddinsFolder 'VideoPlayer\Microsoft.Dynamics.Nav.Client.VideoPlayer.zip')
Set-NAVAddIn -ServerInstance $InstanceName -AddinName 'Microsoft.Dynamics.Nav.Client.WebPageViewer' -PublicKeyToken 31bf3856ad364e35 -ResourceFile ($AppName = Join-Path $ServicesAddinsFolder 'WebPageViewer\Microsoft.Dynamics.Nav.Client.WebPageViewer.zip')
Set-NAVAddIn -ServerInstance $InstanceName -AddinName 'Microsoft.Dynamics.Nav.Client.WelcomeWizard' -PublicKeyToken 31bf3856ad364e35 -ResourceFile ($AppName = Join-Path $ServicesAddinsFolder 'WelcomeWizard\Microsoft.Dynamics.Nav.Client.WelcomeWizard.zip')

# Task 19: Install upgraded permissions sets (Refer to documentation - see link at the top of this script)
# Task 20: Change application version 
Set-NAVApplication -ServerInstance BC180 -ApplicationVersion 18.0.38071.0 -Force
Sync-NAVTenant -ServerInstance BC180 -Mode Sync
Start-NAVDataUpgrade -ServerInstance BC180 -FunctionExecutionMode Serial

## Post-upgrade tasks
# Uninstall the table migration extension if still installed
Set-NavServerConfiguration -ServerInstance BC180 -KeyName "EnableTaskScheduler" -KeyValue true
# If you want to use data encryption as before, enable it.
# Grant users permission to the Open in Excel and Edit in Excel actions.
# Complete the setup of the integration with Dynamics 365 Sales.

# ****
# Custom Apps
# {#     "id": "8e62b29d-0ae9-4b2d-b33a-ecd63cd7da24",
    #   "name": "ASL Upgrade Operation", "publisher": "SSNL", "version": "14.5.1.1",
    # }
    # Migration Ext 
    # {#     "id": "9cb1232b-94cb-4aa6-bab3-c15ec6ea7bc0",
        # "name": "bc14baseapptablesonly", "publisher": "SSNL", "version": "14.0.0.1",
        # }
    # Base Apps
    # {#     "id": "437dbf0e-84ff-417a-965d-ed2bb9650972",
    #     "name": "Base Application", "publisher": "Microsoft", "version": "14.0.0.0","runtime": "7.0"
    #   }
    # System Apps
    # {#     "id": "63ca2fa4-4f03-4f2b-a480-172fef340d3f",
    #     "name": "System Application", "publisher": "Microsoft", "version": "14.0.0.0", "runtime": "7.0"
    #   }

# Set-NAVServerConfiguration -ServerInstance BC180 -KeyName "DestinationAppsForMigration" -KeyValue '[{"appId":"63ca2fa4-4f03-4f2b-a480-172fef340d3f", "name":"System Application", "publisher": "Microsoft"},{"appId":"437dbf0e-84ff-417a-965d-ed2bb9650972", "name":"Base Application", "publisher": "Microsoft"},{"appId":"8e62b29d-0ae9-4b2d-b33a-ecd63cd7da24", "name":"ASL Upgrade Operation", "publisher": "SSNL"}]'

# Get-NavAppinfo
# Id            : 437dbf0e-84ff-417a-965d-ed2bb9650972
# Name          : Base Application, Version       : 14.0.0.0, Publisher     : Microsoft

# Id            : 8e62b29d-0ae9-4b2d-b33a-ecd63cd7da24
# Name          : ASL Upgrade Operation, Version       : 14.0.0.0, Publisher     : SSNL

# Id            : 9cb1232b-94cb-4aa6-bab3-c15ec6ea7bc0
# Name          : bc14baseapptablesonly, Version       : 14.0.0.0, Publisher     : SSNL

# Id            : 63ca2fa4-4f03-4f2b-a480-172fef340d3f
# Name          : System Application, Version       : 14.0.0.0, Publisher     : Microsoft
