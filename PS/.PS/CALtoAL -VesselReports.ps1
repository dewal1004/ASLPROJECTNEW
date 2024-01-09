https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/upgrade/devenv-code-conversion?source=docs

#Prerequisite
https://www.waldo.be/2017/06/30/import-navmodules-an-easy-way-to-import-nav-powershell-modules/
import-Module "C:\Program Files\Microsoft Dynamics 365 Business Central\140\Service\navAdminTool.ps1"
Import-Module "${env:ProgramFiles(x86)}\Microsoft Dynamics 365 Business Central\140\RoleTailored Client\Microsoft.Dynamics.Nav.Model.Tools.psd1" -WarningAction SilentlyContinue | out-null
Import-Module "$env:ProgramFiles\Microsoft Dynamics 365 Business Central\140\Service\NavAdminTool.ps1" -WarningAction SilentlyContinue | Out-Null
Import-Module "${env:ProgramFiles(x86)}\Microsoft Dynamics 365 Business Central\140\RoleTailored Client\Microsoft.Dynamics.Nav.Apps.Tools.psd1" -WarningAction SilentlyContinue | Out-Null

# Code Conversion from C/AL to AL
# Task 1: Import the test library into your C/AL solution
# Task 2: Compile all the objects in your C/AL solution
$DbName = "Atlantic ASL 2"
Compile-NAVApplicationObject $DbName 
Compile-NAVApplicationObject $DbName -Filter 'Type=Report;Id=50007..50012' -Recompile 

# Task 3: Export the application objects to the new TXT syntax
# 1.a Create a folder for the exported base application objects to TXT files (for example, 
mkdir c:\export2al\baseapplication
# 1.b Export the application objects
#   Export-NAVApplicationObject -DatabaseServer .\BCDEMO -DatabaseName "Demo Database BC (14-0)" -ExportToNewSyntax -Path "c:\export2al\baseapplication\exportedbc14app-part1.txt" -Filter 'Id=1..129999'
#   Export-NAVApplicationObject -DatabaseServer .\BCDEMO -DatabaseName "Demo Database BC (14-0)" -ExportToNewSyntax -Path "c:\export2al\baseapplication\exportedbc14app-part2.txt" -Filter 'Id=140000..1999999999'
#   Export-NAVApplicationObject -DatabaseServer .\BCDEMO -DatabaseName "Demo Database BC (14-0)" -ExportToNewSyntax -Path "c:\export2al\baseapplication\exportedbc14testobjects.txt" -Filter 'Id=130400..130416'
$DbName =  "Atlantic ASL 2"
$DbSvr = ".\NAV365SRV\NAVSQLLIVE"


$Path = "c:\export2al\baseapplication\exportedbc14app-vesselReports.txt"
$Filter = 'Type=Report;Id=50007..50012' 
Export-NAVApplicationObject -DatabaseServer $DbSvr -DatabaseName $DbName -ExportToNewSyntax -Path $Path -Filter $Filter

#TestServer
$DbName =  "Atlantic ASL V14toV18"
$DbSvr = ".\NAV365TEST\ASLHO2016"
$DbInstance = 'ASLHO2016'
$DbServer = 'NAV365TEST'

Compile-NAVApplicationObject $DbName -Filter 'Type=Report;Id=50007..50012' -Recompile

