# Upgrading Customized C/AL Application to Microsoft Base Application Version 18

# Task 1: Install version 18
# Task 2: Upgrade permission sets
# APPLICATION UPGRADE
# Task 3: Move code customizations to extensions
# Task 4: Create empty System, Base, and customization extensions

# Task 5: Create table migration extension
# ***Task 5A:Create the first version
# 5.3.1 Make target path if not existing:  C:\export2al\bc14tablesonly
mkdir C:\export2al\bc14tablesonly
# 5.3.2 Export tables e.g. 
# Export-NAVApplicationObject -DatabaseServer .\BCDEMO -DatabaseName "Demo Database BC (14-0)" -ExportToNewSyntax -Path "C:\export2al\bc14tablesonly\exportedbc14-tables.txt" -Filter 'Type=Table;Id=1..1999999999'
Export-NAVApplicationObject -DatabaseServer NAV365TEST\ASLHO2016 -DatabaseName "Demo Database BC (14-0)" -ExportToNewSyntax -Path "C:\export2al\bc14tablesonly\exportedbc14-tables1.txt" -Filter 'Type=Table;Id=1..1999999999'

$DatabaseServer = NAV365TEST\ASLHO2016
$DatabaseName = "Demo Database BC (14-0)"
$Path = "C:\export2al\bc14tablesonly\exportedbc14-tables.txt"
Export-NAVApplicationObject -DatabaseServer $DatabaseServer -DatabaseName $DatabaseName -ExportToNewSyntax -Path $Path -Filter 'Type=Table;Id=1..1999999999'
 
# 4. Use the txt2al conversion 
mkdir C:\export2al\bc14tablesonly\al
# run CMD as administrator
# change to txt2al dir, By default, the location is 
# C:\Program Files (x86)\Microsoft Dynamics 365 Business Central\140\RoleTailored Client. 
Set-Location C:\Program Files (x86)\Microsoft Dynamics NAV\140\RoleTailored Client
# Run the txt2al command:
txt2al --source=C:\export2al\bc14tablesonly --target=C:\export2al\bc14tablesonly\al --tableDataOnly

# Create an APP project for Table Migration Extesion
# copy the version 18 system symbols extension (System.app file) to the .alpackage folder
# Create apps from the converted AL

# ****  Create the second version (of Table3 Migration Extension)
# 1. In Visual Studio Code, create a new file called migration.json file and add it to the project's root folder.

# ....

# DATA UPGRADE
# Task 6: Prepare databases
# 6.3 Start Business Central Administration Shell for version 14 as an administrator.
# Uninstall all extensions
# Get-NAVAppInfo -ServerInstance <server instance name> -Tenant <tenant ID>| % { Uninstall-NAVApp -ServerInstance <server instance name> -Tenant <tenant ID> -Name $_.Name -Version $_.Version -Force}

$ServerInstance = BC140

Get-NAVAppInfo -ServerInstance $ServerInstance | % { Uninstall-NAVApp -ServerInstance $ServerInstance  -Name $_.Name -Version $_.Version -Force}
Get-NAVAppInfo -ServerInstance $ServerInstance | % { Unpublish-NAVApp -ServerInstance $ServerInstance -Name $_.Name -Version $_.Version }
Get-NAVAppInfo -ServerInstance <BC14 server instance> -SymbolsOnly | % { Unpublish-NAVApp -ServerInstance <BC14 server instance> -Name $_.Name -Version $_.Version }
Stop-NAVServerInstance -ServerInstance <server instance name>

# Task 7: Convert version 14 database
# With BC Admin Shell version 18 (Run as Admin)
# Invoke-NAVApplicationDatabaseConversion -DatabaseServer <database server name>\<database server instance> -DatabaseName "<database name>"
Invoke-NAVApplicationDatabaseConversion -DatabaseServer <database server name>\<database server instance> -DatabaseName "<database name>"

#***** 
# Use upgrade Codeunit to move Data from standard Fields to customized fields sot allow DB Technical upgrade