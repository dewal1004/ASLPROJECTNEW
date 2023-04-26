https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/upgrade/devenv-code-conversion?source=docs

# Code Conversion from C/AL to AL
# Task 1: Import the test library into your C/AL solution
# Task 2: Compile all the objects in your C/AL solution
$DbName = 'MyDatabaseName'
Compile-NAVApplicationObject $DbName 
Compile-NAVApplicationObject $DbName -Filter 'Version List='*@SSNL*'' -Recompile

# Task 3: Export the application objects to the new TXT syntax
# 1.a Create a folder for the exported base application objects to TXT files (for example, 
mkdir c:\export2al\baseapplication
# 1.b Export the application objects
#   Export-NAVApplicationObject -DatabaseServer .\BCDEMO -DatabaseName "Demo Database BC (14-0)" -ExportToNewSyntax -Path "c:\export2al\baseapplication\exportedbc14app-part1.txt" -Filter 'Id=1..129999'
#   Export-NAVApplicationObject -DatabaseServer .\BCDEMO -DatabaseName "Demo Database BC (14-0)" -ExportToNewSyntax -Path "c:\export2al\baseapplication\exportedbc14app-part2.txt" -Filter 'Id=140000..1999999999'
#   Export-NAVApplicationObject -DatabaseServer .\BCDEMO -DatabaseName "Demo Database BC (14-0)" -ExportToNewSyntax -Path "c:\export2al\baseapplication\exportedbc14testobjects.txt" -Filter 'Id=130400..130416'
$DbName =  "Demo Database BC (14-0)"
$DbSvr = ".\BCDEMO"


$Path = "c:\export2al\baseapplication\exportedbc14app-part1.txt"
$Filter = 'Id=1..129999'
Export-NAVApplicationObject -DatabaseServer $DbSvr -DatabaseName $DbName -ExportToNewSyntax -Path $Path -Filter $Filter

$Path = "c:\export2al\baseapplication\exportedbc14app-part2.txt"
$Filter = 'Id=140000..1999999999'
Export-NAVApplicationObject -DatabaseServer $DbSvr -DatabaseName $DbName -ExportToNewSyntax -Path $Path -Filter $filter

$Path = "c:\export2al\baseapplication\exportedbc14testobjects.txt"
$Filter = 'Id=130400..130416'
Export-NAVApplicationObject -DatabaseServer $DbSvr -DatabaseName $DbName -ExportToNewSyntax -Path $Path -Filter $Filter

