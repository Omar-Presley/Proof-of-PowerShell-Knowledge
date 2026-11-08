#Manipulating & Creating Files and Directories
<#My Thougths: These are very important commands for understanding,
and making powershell scripts.#>

$d = pwd

New-Item -path $d -name "tmp" -type directory

New-Item -path $d\tmp\pstest.txt -type "file" -value "this is a ps test file"

<#CopyingIitems:
Syntax: Copy-Item "filepath" -destination "directory"
Moving Items:
Move-Item -path "filepath" -destination "directory"
Removing Items:
Remove-Item "filepath"
Testing if a file is there [returns a boolean]:
Test-Path "filepath"   
Renaming a File
Rename-Item -path "filepath" -newname "forcewithme.txt"
#>
