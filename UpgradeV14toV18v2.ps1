import-Module "C:\Program Files\Microsoft Dynamics 365 Business Central\140\Service\navAdminTool.ps1"


$SvrInstName = BC180
$DbName = "Atlantic ASL V18fromV14"
$TabMigrExtId = "9cb1232b-94cb-4aa6-bab3-c15ec6ea7bc0"
$TabMigrExtName = "ASL Custom App"
$TabMigrExtPubr =  "SSNL"
$LicenseFilePath = "C:\LIC\SSNL365V180122.flf"


##8&9
Invoke-NAVApplicationDatabaseConversion -DatabaseServer NAV365TEST\ASLHO2016 -DatabaseName "Atlantic ASL V18fromV14"
Set-NAVServerConfiguration -ServerInstance BC180 -KeyName DatabaseName -KeyValue "Atlantic ASL V18fromV14"
Set-NAVServerConfiguration -ServerInstance BC180 -KeyName "DestinationAppsForMigration" -KeyValue '[{"appId":"9cb1232b-94cb-4aa6-bab3-c15ec6ea7bc0", "name":"ASL Custom App", "publisher": "SSNL"}]'
Set-NavServerConfiguration -ServerInstance BC180 -KeyName "EnableTaskScheduler" -KeyValue false

Import-NAVServerLicense -ServerInstance BC180 -LicenseFile "C:\LIC\SSNL365V180122.flf"
Restart-NAVServerInstance -ServerInstance BC180

##10: Publish DestinationAppsForMigrations extensions
Publish-NAVApp -ServerInstance BC180 -Path "<path to extension .app file>"
Publish-NAVApp -ServerInstance bc180 -Path "C:\ALs\MSMigrationExtCus\SSNL_ASL Custom App_14.5.1.1.app"-SkipVerification
# Publish the empty versions of the following extensions:
#     System Application extension
#     Base Application extension
#     Customization extensions (if any).
Restart-NAVServerInstance -ServerInstance BC180

# Task 11: Synchronize tenant
# 




