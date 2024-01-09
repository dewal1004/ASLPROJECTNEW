https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/upgrade/devenv-code-conversion?source=docs

# Code Conversion from C/AL to AL
# Import the NAV development environment module
# import-Module "C:\Program Files\Microsoft Dynamics 365 Business Central\140\Service\navAdminTool.ps1" //BC140 path
Import-Module "C:\Program Files\Microsoft Dynamics NAV\90\Service\navAdminTool.ps1"
Import-Module "${env:ProgramFiles(x86)}\Microsoft Dynamics NAV\90\RoleTailored Client\Microsoft.Dynamics.Nav.Model.Tools.psd1" -force
# Task 1: Import the test library into your C/AL solution
# Task 2: Compile all the objects in your C/AL solution
{
    # Example
    # Compile-NAVApplicationObject MyApp
    # Compile-NAVApplicationObject MyApp -Filter 'Type=Codeunit' -Recompile
    # 'Page','Codeunit','Table','XMLport','Report','Query' | % { Compile-NAVApplicationObject -DatabaseName MyApp -Filter "Type=$_" -AsJob } | Receive-Job -Wait
}
    
Compile-NAVApplicationObject "Demo Database BC (14-0)" -Filter 'ID=50000..50100' -Recompile
Compile-NAVApplicationObject "Demo Database BC (14-0)" -logpath "C:\Temp" -Filter 'Version List=*SSN1.0*' -Recompile -SynchronizeSchemaChanges force
get-help Compile-NAVApplicationObject -Online
    
$dbName = "Demo Database BC (14-0)"
Compile-NAVApplicationObject $dbName 
Compile-NAVApplicationObject $dbName -Filter 'Version List='*@SSNL*'' -Recompile
# Task 3: Export the application objects to the new TXT syntax
# 1.a Create a folder for the exported base application objects to TXT files (for example, 
mkdir c:\export2al\baseapplication
# 1.b Export the application objects
#   Export-NAVApplicationObject -DatabaseServer .\BCDEMO -DatabaseName "Demo Database BC (14-0)" -ExportToNewSyntax -Path "c:\export2al\baseapplication\exportedbc14app-part1.txt" -Filter 'Id=1..129999'
#   Export-NAVApplicationObject -DatabaseServer .\BCDEMO -DatabaseName "Demo Database BC (14-0)" -ExportToNewSyntax -Path "c:\export2al\baseapplication\exportedbc14app-part2.txt" -Filter 'Id=140000..1999999999'
#   Export-NAVApplicationObject -DatabaseServer .\BCDEMO -DatabaseName "Demo Database BC (14-0)" -ExportToNewSyntax -Path "c:\export2al\baseapplication\exportedbc14testobjects.txt" -Filter 'Id=130400..130416'
$DbSvr = 'NAV365TEST\ASLHO2016' 
$dbName = "Demo Database BC (14-0)"

$Path = "c:\export2al\baseapplication\exportedbc14app-part1.txt"
$Filter = 'Id=1..129999'
Export-NAVApplicationObject -DatabaseServer $DbSvr -DatabaseName $dbName -ExportToNewSyntax -Path $Path -Filter $Filter

$Path = "c:\export2al\baseapplication\exportedbc14app-part2.txt"
$Filter = 'Id=140000..1999999999'
Export-NAVApplicationObject -DatabaseServer $DbSvr -DatabaseName $dbName -ExportToNewSyntax -Path $Path -Filter $filter

$Path = "c:\export2al\baseapplication\exportedbc14testobjects.txt"
$Filter = 'Id=130400..130416'
Export-NAVApplicationObject -DatabaseServer $DbSvr -DatabaseName $dbName -ExportToNewSyntax -Path $Path -Filter $Filter

# 2.a Create a folder
# 1.b Export the application objects
#   Export-NAVApplicationObject -DatabaseServer .\BCDEMO -DatabaseName "Demo Database BC (14-0)" -ExportToNewSyntax -Path "c:\export2al\baseapplication\exportedbc14app-part1.txt" -Filter 'Id=1..129999'
#   Export-NAVApplicationObject -DatabaseServer .\BCDEMO -DatabaseName "Demo Database BC (14-0)" -ExportToNewSyntax -Path "c:\export2al\baseapplication\exportedbc14app-part2.txt" -Filter 'Id=140000..1999999999'
#   Export-NAVApplicationObject -DatabaseServer .\BCDEMO -DatabaseName "Demo Database BC (14-0)" -ExportToNewSyntax -Path "c:\export2al\baseapplication\exportedbc14testobjects.txt" -Filter 'Id=130400..130416'
$dbName = "Demo Database BC (14-0)"
$DbSvr = ".\BCDEMO"

## 5.3.1 Make target path if not existing:  C:\export2al\bc14tablesonly
mkdir C:\export2al\bc14tablesonly
# 5.3.2 Export tables e.g. 
# Export-NAVApplicationObject -DatabaseServer .\BCDEMO -DatabaseName "Demo Database BC (14-0)" -ExportToNewSyntax -Path "C:\export2al\bc14tablesonly\exportedbc14-tables.txt" -Filter 'Type=Table;Id=1..1999999999'
$DbSrvr = 'NAV365TEST\ASLHO2016' 
$dbName = "Demo Database BC (14-0)" 
$ExportToPath = "C:\export2al\bc14tablesonly\exportedbc14-tables1.txt" 
$ExportFilter = 'Type=Table;Id=1..1999999999'

Export-NAVApplicationObject -DatabaseServer NAV365TEST\ASLHO2016 -DatabaseName "Demo Database BC (14-0)" -ExportToNewSyntax -Path "C:\export2al\bc14tablesonly\exportedbc14-tables1.txt" -Filter 'Type=Table;Id=1..1999999999'
Export-NAVApplicationObject -DatabaseServer .\BCDEMO             -DatabaseName "Demo Database BC (14-0)" 
-ExportToNewSyntax -Path "C:\export2al\bc14tablesonly\exportedbc14-tables.txt" 
-Filter 'Type=Table;Id=1..1999999'

Export-NAVApplicationObject -DatabaseServer $DbSrvr -DatabaseName $dbName -ExportToNewSyntax -Path $ExportToPath -Filter 'Type=Table; Id=1..1999999999'

Exportcls-NAVApplicationObject -DatabaseServer NAV365TEST\ASLHO2016 -DatabaseName "Atlantic ASL V14toV18" -ExportToNewSyntax -Path "C:\export2al\bc14tablesonly\2\exportedbc14-tables2.txt" -Filter 'Type=Table; Id=1..1999999999'
 
class ClassName {
    <# Define the class. Try constructors, properties, or methods. #>
}##5.4: Use the txt2al conversion 
mkdir C:\export2al\bc14tablesonly\al
# run CMD as administrator
# change to txt2al dir, By default, the location is 
# C:\Program Files (x86)\Microsoft Dynamics 365 Business Central\140\RoleTailored Client. 
Set-Location C:\Program Files (x86)\Microsoft Dynamics NAV\140\RoleTailored Client
txt2al --source=C:\export2al\bc14tablesonly --target=C:\export2al\bc14tablesonly\al --tableDataOnly
txt2al --source=C:\export2al\bc14tablesonly\2 --target=C:\export2al\bc14tablesonly\2\al --tableDataOnly

##5.6: Create an APP project for Table Migration Extesion
##5.9 copy the version 18 system symbols extension (System.app file) to the .alpackage folder
##5.11 Create apps from the converted AL

Get-NAVWebServerInstance
Get-Module -ListAvailable

Get-Command -Module Microsoft.Dynamics.Nav.Model.Tools, Microsoft.Dynamics.Nav.Apps.Tools, Microsoft.Dynamics.Nav.Apps.Management
Start-Transcript

You can search for Identity Manager on windows systems
There is a profile/role that allows you to load module automatically on PS, Share point Azure on winserver

Get-Command -Name '*Compile*'

# Get Database
get-command -Noun SqlDatabase* -Verb Get
Get-Help Get-SqlDatabase -Examples
Get-SqlInstance -Credential $credential -MachineName " MachineName" | Get-SqlDatabase -Credential $sqlCredential;
Get-SqlInstance

ServerName : ABIOLA-HP\BCNAV
DatabaseName : "Demo Database NAV (9-0)"
Compile-NAVApplicationObject "Demo Database NAV (9-0)" -Filter 'ID=50000..50100' 
Get-Command -name *windowsUser*
Get-Command -noun *windows* -verb get
Get-Command -noun *sql* -verb get

User 'MicrosoftAccount\dewaliii@hotmail.com'