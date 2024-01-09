https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-txt2al-tool

# To activate a PS Session: F1, Session
#set Txt2AL file location
Set-Location "C:\Program Files (x86)\Microsoft Dynamics 365 Business Central\140\RoleTailored Client"
# DVD Path
Set-Location "C:\T\BC14\BC14 CU21\RoleTailoredClient\program files\Microsoft Dynamics NAV\140\RoleTailored Client"


# Using the Txt2Al conversion tool
# 1. Compile your clean NAV Database
# 2. Export the baseline objects
# Export file Syntax
finsql.exe Command=ExportToNewSyntax, File=<filename.txt>, Database="<databasename>", ServerName=<servername> , Filter=Type=table; ID=<tableID> The following
#example: To exports the table 225 from the Demo Database NAV (13-0) database:
finsql.exe Command=ExportToNewSyntax, File=exportedBaselineObjects.txt, Database="Demo Database NAV (13-0)", ServerName=.\NAVDEMO , Filter=Type=table; ID=225
# 3. Import your solution using the import option in C/SIDE and compile the database.
# 4. Export all new and/or modified objects using the following syntax: finsql.exe Command=ExportToNewSyntax
$SvrInstName = 
$SvrName = ABIOLA-HP\BCNAV
$DbName = "Demo Database NAV (9-0)"
$DbPath = "C:\Program Files\Microsoft SQL Server\MSSQL12.BCNAV\MSSQL\DATA\"

# Abiola-HP
finsql.exe  Command=ExportToNewSyntax, 
            File=exportedNewModifiedObjects.txt, 
            Database= "Demo Database NAV (9-0)", 
            ServerName=.\BCNAV , 
            Filter=Type=table; ID=231

finsql.exe  Command=ExportToNewSyntax, File=exportedNewModifiedObjects.txt, Database= "Demo Database NAV (9-0)", ServerName=.\BCNAV , Filter=Type=table; ID=231

# finsql.exe Command=ExportToNewSyntax, File=exportedNewModifiedObjects.txt, Database="myDatabase", ServerName=.\BCNAV ,Filter=Version List='*SSN*'

# ASL Server 17
$SvrInstName = BC140
$SvrName = .\NAV365SRV\NAVSQLLIVE
$DbName = "Atlantic ASL 2"
$DbPath = "C:\Program Files\Microsoft SQL Server\MSSQL15.NAVSQLLIVE\MSSQL\DATA"

finsql.exe  Command=ExportToNewSyntax, 
            File=exportedNewModifiedObjects.txt, 
            Database= "Atlantic ASL 2", 
            ServerName=.\NAV365SRV\NAVSQLLIVE, 
            Filter=Type=table; ID=231

finsql.exe  Command=ExportToNewSyntax, File=exportedNewModifiedObjects.txt, Database= "Atlantic ASL 2", ServerName=.\NAV365SRV\NAVSQLLIVE, Filter=Type=table; ID=231




