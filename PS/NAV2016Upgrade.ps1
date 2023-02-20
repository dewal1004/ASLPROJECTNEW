# cloned from https://github.com/JonFjolnirAlbertsson/SI-Data/blob/d0140f12974f93c27e2aab87bb5fa8adb7428784/NAV2015/Upgrade%20NAV%20process.ps1

Import-Module "C:\Users\Abiola\Documents\NAV\Script\SQL Restore from file.ps1"
Import-Module "C:\Users\Abiola\Documents\NAV\Script\SQL change compatibility level.ps1"
Import-Module "C:\Users\Abiola\Documents\NAV\Script\SQL Enable Broker.ps1"
Import-Module "C:\Users\Abiola\Documents\NAV\Script\SQL Set Service instance user permission.ps1"
Import-Module "C:\Users\Abiola\Documents\NAV\Script\New-NAVServerInstance.ps1"
Import-Module "C:\Users\Abiola\Documents\NAV\Script\CreateNAVUser.ps1"

$dbName = "NAV2009_ASL_UpgradeToProd"
$dbServer = "AbiolaW8"
#$BackupPath = "D:\SQL\Backup\ASL\"
$BackupPath = "C:\SQL\Backup\ASL\"
$NavServiceInstance = "NAV80ASLUpgrToProd"
$FirstPort = 8050
$LogPath = "C:\NavUpgrade\ASL\Logs\"
$CompileLog = $LogPath + "compile"
$ImportLog = $LogPath + "import"
$ConversionLog = $LogPath + "Conversion"
#$NAV2016APPObjects2Import = "C:\NavUpgrade\ASL\NAV2016CU1\All-Objects-2016CU1-included upgrade.fob"
$NAV2016APPObjects2Import = "C:\NavUpgrade\ASL\NAV2016CU1\ASL-AllObjects.fob"
$NAV2016UpgradeAPPObjects2Import = "C:\NavUpgrade\ASL\NAV2016CU1\Upgrade601800.NO.fob"
#$NAV2016ASLUpgradeAPPObjects2Import = "C:\NavUpgrade\ASL\NAV2016CU1\Upgrade\Hotfix Sales Header.fob"

# Restore DB from Customer
$dbName = "NAV2009SP1_ASL_BeforeProd"
$BackupFileName = "NAV2009SP1_ASL_BeforeUpg.bak"
$BackupFilePath = $BackupPath + $BackupFileName 
RestoreDBFromFile -backupFile $BackupFilePath -dbNewname $dbName

# Step 1
$BackupFileName = "NAV2009SP1_ASL_Step1.bak"
$BackupFilePath = $BackupPath + $BackupFileName 
Backup-SqlDatabase -ServerInstance $dbServer -Database $dbName -BackupAction Database -BackupFile $BackupFilePath -CompressionOption Default
#Step 2
$BackupFileName = "NAV2009SP1_ASL_Step2.bak"
$BackupFilePath = $BackupPath + $BackupFileName 
Backup-SqlDatabase -ServerInstance $dbServer -Database $dbName -BackupAction Database -BackupFile $BackupFilePath -CompressionOption Default

# Before convert DB from 2009 to 2013 
ChangeDBCompatibilityLevel -DBName $dbName

# After converting to NAV 2013
$BackupFileName = "NAV2009SP1_ASL_NAV2013.bak"
$BackupFilePath = $BackupPath + $BackupFileName 
Backup-SqlDatabase -ServerInstance $dbServer -Database $dbName -BackupAction Database -BackupFile $BackupFilePath -CompressionOption Default

#Convert Database to NAV 2016 CU6
Invoke-NAVDatabaseConversion -DatabaseName $dbName -DatabaseServer $dbServer -LogPath $ConversionLog

# Compile system tables. Synchronize Schema option to Later.
$Filter = 'ID=2000000004..2000000130'
Compile-NAVApplicationObject -DatabaseName $dbName -Filter $Filter -LogPath $ImportLog -Recompile -SynchronizeSchemaChanges No

# NAV 2016
SetNAVServiceUserPermission -DBName $dbName
EnableBroker -DBName $dbName
CreateNAVServerInstance -DataBase $dbName -dbServer $dbServer -FirstPortNumber $FirstPort -NavServiceInstance $NavServiceInstance -PaWord 1378Nesbru -User si-data\sql

# Synchronize all tables from the Tools menu by selecting Sync. Schema for All Tables, then With Validation.
Sync-NAVTenant -ServerInstance $NavServiceInstance -Mode Sync

$BackupFileName = "NAV2009SP1_ASL_NAV2016_Step1.bak"
$BackupFilePath = $BackupPath + $BackupFileName 
Backup-SqlDatabase -ServerInstance $dbServer -Database $dbName -BackupAction Database -BackupFile $BackupFilePath -CompressionOption Default

# If NAV 2016 dataupgrade fails and you need to go back to the state before upgrade
<#
$BackupFileName = "NAV2009SP1_ASL_NAV2016_Step1.bak"
$BackupFilePath = $BackupPath + $BackupFileName 
#$dbName = "NAV2013_ASL_Upgrade"
#$NavServiceInstance = "NAV2013_ASL_Upgrade"
#$FirstPort = 8055
RestoreDBFromFile -backupFile $BackupFilePath -dbNewname $dbName
SetNAVServiceUserPermission -DBName $dbName
#Remove-NAVServerInstance -ServerInstance $NavServiceInstance
#CreateNAVServerInstance -DataBase $dbName -dbServer $dbServer -FirstPortNumber $FirstPort -NavServiceInstance $NavServiceInstance -PaWord 1378Nesbru -User si-data\sql
#CreateNAVUser -NavServiceInstance $NavServiceInstance -User si-data\sql
#EnableBroker -DBName $dbName
#>

# Import Migrated NAV 2016 objects with ASL migrated objects. Synchronize Schema option to Later.
Import-NAVApplicationObject $NAV2016APPObjects2Import -DatabaseName $dbName -ImportAction Overwrite -SynchronizeSchemaChanges No -LogPath $ImportLog -Verbose
# Import Migrated NAV 2016 upgrade objects. Synchronize Schema option to Later.
Import-NAVApplicationObject $NAV2016UpgradeAPPObjects2Import -DatabaseName $dbName -ImportAction Overwrite -SynchronizeSchemaChanges No -LogPath $ImportLog -Verbose

# Compile all objects which have not been compiled. Synchronize Schema option to Later.
#yes, no, 1, 0
$Filter = 'Compiled=0'
Compile-NAVApplicationObject -DatabaseName $dbName -Filter $Filter -LogPath $ImportLog -Recompile -SynchronizeSchemaChanges No

# Force compile of these tables
$Filter = 'ID=2000000004..2000000130'
Compile-NAVApplicationObject -DatabaseName $dbName -DatabaseServer $dbServer -NavServerName $dbServer -Filter $Filter -NavServerInstance $NavServiceInstance -NavServerManagementPort $FirstPort -Recompile -SynchronizeSchemaChanges Force

#Compile these object with force, we expect loss of this data.
Compile-NAVApplicationObject -DatabaseName $dbName -DatabaseServer $dbServer -NavServerName $dbServer -Filter ID=50018 -NavServerInstance $NavServiceInstance -NavServerManagementPort $FirstPort -Recompile -SynchronizeSchemaChanges Force
Compile-NAVApplicationObject -DatabaseName $dbName -DatabaseServer $dbServer -NavServerName $dbServer -Filter ID=7013450 -NavServerInstance $NavServiceInstance -NavServerManagementPort $FirstPort -Recompile -SynchronizeSchemaChanges Force
Compile-NAVApplicationObject -DatabaseName $dbName -DatabaseServer $dbServer -NavServerName $dbServer -Filter ID=7013451 -NavServerInstance $NavServiceInstance -NavServerManagementPort $FirstPort -Recompile -SynchronizeSchemaChanges Force
Compile-NAVApplicationObject -DatabaseName $dbName -DatabaseServer $dbServer -NavServerName $dbServer -Filter ID=7013453 -NavServerInstance $NavServiceInstance -NavServerManagementPort $FirstPort -Recompile -SynchronizeSchemaChanges Force
Compile-NAVApplicationObject -DatabaseName $dbName -DatabaseServer $dbServer -NavServerName $dbServer -Filter ID=36 -NavServerInstance $NavServiceInstance -NavServerManagementPort $FirstPort -Recompile -SynchronizeSchemaChanges Force
Compile-NAVApplicationObject -DatabaseName $dbName -DatabaseServer $dbServer -NavServerName $dbServer -Filter ID=27 -NavServerInstance $NavServiceInstance -NavServerManagementPort $FirstPort -Recompile -SynchronizeSchemaChanges Force

# Synchronize all tables from the Tools menu by selecting Sync. Schema for All Tables, then With Validation.
Sync-NAVTenant -ServerInstance $NavServiceInstance -Mode Sync
Sync-NAVTenant -ServerInstance $NavServiceInstance -Mode CheckOnly

$BackupFileName = "NAV2009SP1_ASL_NAV2016_Step2.bak"
$BackupFilePath = $BackupPath + $BackupFileName 
Backup-SqlDatabase -ServerInstance $dbServer -Database $dbName -BackupAction Database -BackupFile $BackupFilePath -CompressionOption Default

# Start Data upgrade NAV 2016
Start-NAVDataUpgrade -ServerInstance $NavServiceInstance -FunctionExecutionMode Parallel
#Start-NAVDataUpgrade -ServerInstance $NavServiceInstance -FunctionExecutionMode Serial
#Resume-NAVDataUpgrade -CodeunitId 104055 -CompanyName "FilteruniQ AS" -FunctionName StartUPgrade -ServerInstance $NavServiceInstance

Resume-NAVDataUpgrade -ServerInstance $NavServiceInstance

# Follow up the data upgrade process
Get-NAVDataUpgrade -ServerInstance $NavServiceInstance -Progress
Get-NAVDataUpgrade -ServerInstance $NavServiceInstance -Detailed | ogv
#Get-NAVDataUpgrade -ServerInstance $NavServiceInstance -Detailed | Out-File 
Get-NAVDataUpgrade -ServerInstance $NavServiceInstance -ErrorOnly | ogv

# Database backup with upgraded data
$BackupFileName = "NAV2016CU1_ASL.bak"
$BackupFilePath = $BackupPath + $BackupFileName 
Backup-SqlDatabase -ServerInstance $dbServer -Database $dbName -BackupAction Database -BackupFile $BackupFilePath -CompressionOption Default

# Database backup with upgraded data and Control Add-Ins
$BackupFileName = "NAV2016CU1_ASL_Finished.bak"
#$BackupFileName = "NAV2016CU1_Finished with OM.bak"
#$BackupFileName = "NAV2016CU1_Finished backup.bak"
$BackupFilePath = $BackupPath + $BackupFileName 
Backup-SqlDatabase -ServerInstance $dbServer -Database $dbName -BackupAction Database -BackupFile $BackupFilePath -CompressionOption Default

# Import users, role and company



