https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/upgrade/upgrade-to-microsoft-base-app-V18
https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/upgrade/devenv-code-conversion


In Power Shell (Admin)
Run this cmdlet it it is not already existing;
Find-Module | where author -eq waldo | install-module

Import-NAVModules
Select Version of NAv Dev shell to load

# Upgrading Customized C/AL Application to Microsoft Base Application Version 19

##1: Install version 19
##2: Upgrade permission sets
##2.1: APPLICATION UPGRADE
##3: Move code customizations to extensions
    # Affected Temporary tables 49, 1670, Move data from this table to other table, 
    # refactor the codes that affects this table.
##4: Create empty System, Base, and customization extensions
##5: Create table migration extension
##5A:Create the first version
## 5.3.1 Make target path if not existing:  C:\export2al\bc14tablesonly
mkdir C:\export2al\bc14tablesonly
# 5.3.2 Export tables e.g. 
# Export-NAVApplicationObject -DatabaseServer .\BCDEMO -DatabaseName "Demo Database BC (14-0)" -ExportToNewSyntax -Path "C:\export2al\bc14tablesonly\exportedbc14-tables.txt" -Filter 'Type=Table;Id=1..1999999999'
$DbSrvr = 'NAV365TEST\ASLHO2016' 
$DbName = "Demo Database BC (14-0)" 
$ExportToPath = "C:\export2al\bc14tablesonly\exportedbc14-tables1.txt" 
$ExportFilter = 'Type=Table;Id=1..1999999999'

Export-NAVApplicationObject -DatabaseServer NAV365TEST\ASLHO2016 -DatabaseName "Demo Database BC (14-0)" -ExportToNewSyntax -Path "C:\export2al\bc14tablesonly\exportedbc14-tables1.txt" -Filter 'Type=Table;Id=1..1999999999'
Export-NAVApplicationObject -DatabaseServer .\BCDEMO             -DatabaseName "Demo Database BC (14-0)" -ExportToNewSyntax -Path "C:\export2al\bc14tablesonly\exportedbc14-tables.txt" -Filter 'Type=Table;Id=1..1999999999'
Export-NAVApplicationObject -DatabaseServer $DbSrvr -DatabaseName $DbName -ExportToNewSyntax -Path $ExportToPath -Filter 'Type=Table;Id=1..1999999999'
Export-NAVApplicationObject -DatabaseServer NAV365TEST\ASLHO2016 -DatabaseName "Atlantic ASL BDG" -ExportToNewSyntax -Path "C:\export2al\bc14tablesonly\exportedbc14-tables.txt" -Filter 'Type=Table;Id=1..1999999999'
 
##5.4: Use the txt2al conversion 
mkdir C:\export2al\bc14tablesonly\al
# run CMD as administrator
# change to txt2al dir, By default, the location is 
# C:\Program Files (x86)\Microsoft Dynamics NAV\140\RoleTailored Client. 
Set-Location C:\Program Files (x86)\Microsoft Dynamics NAV\140\RoleTailored Client
txt2al --source=C:\export2al\bc14tablesonly --target=C:\export2al\bc14tablesonly\al --tableDataOnly
txt2al --source=C:\export2al\bc14tablesonly\2 --target=C:\export2al\bc14tablesonly\2\al --tableDataOnly

txt2al --source=C:\export2al\bc14tablesonly --target=C:\export2al\bc14tablesonly\al --tableDataOnly


##5.6: Create an APP project for Table Migration Extesion
##5.9 copy the version 18 system symbols extension (System.app file) to the .alpackage folder
##5.11 Create apps from the converted AL

# ****  Create the second version (of Table3 Migration Extension)
##B.1: In Visual Studio Code, create a new file called migration.json file and add it to the project's root folder.
##B.2: Add the migration rule
##B.4: Increase the version in the app.json file.

# DATA UPGRADE
##6: Prepare databases, make a copy of the database and restore it as DBName14to18
# 6.3 Start Business Central Administration Shell for version 14 as an administrator.
# Uninstall all extensions
# Get-NAVAppInfo -ServerInstance <server instance name> -Tenant <tenant ID>| % { Uninstall-NAVApp -ServerInstance <server instance name> -Tenant <tenant ID> -Name $_.Name -Version $_.Version -Force}


import-Module "C:\Program Files\Microsoft Dynamics 365 Business Central\140\Service\navAdminTool.ps1"
Set-NAVServerConfiguration -ServerInstance bc140 -KeyName DatabaseName -KeyValue "Atlantic ASL BDG V18fromV14"
Restart-NAVServerInstance -ServerInstance BC140
$SrvrInst = 'BC140'
Get-NAVAppInfo -ServerInstance $SrvrInst | % { Uninstall-NAVApp -ServerInstance $SrvrInst -Name $_.Name -Version $_.Version -Force}
Get-NAVAppInfo -ServerInstance $SrvrInst | % { Unpublish-NAVApp -ServerInstance $SrvrInst -Name $_.Name -Version $_.Version }
Get-NAVAppInfo -ServerInstance $SrvrInst -SymbolsOnly | % { Unpublish-NAVApp -ServerInstance $SrvrInst -Name $_.Name -Version $_.Version }

# Prepare DB for conversion, restore it to V18 e.g. <NameV18fromV14>