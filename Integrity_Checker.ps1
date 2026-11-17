<#
Integrity Checker
Author: Omar Presley
Date: 11/16/2026

Description: Use the program to check the inital hashes of your file, save those hashes in a easy format to
then use the program again later to check the integrity of those files. 

Purpose: To helps users check file hashes to ensure file integrity without knowing or having to type longer
PowerShell commands. #>

cls

<#Hashtable that holds all commands#>
$commands = @{
    "hashm" = "  Checks all files in your current directory using MD5";
    "hashm3d" = "Checks all files in your current directory using MACTripleDES";
    "hashr" = "  Checks all files in your current directory using RIPEMD160";
    "hash1" = "  Checks all files in your current directory using SHA1";
    "hash2" = "  Checks all files in your current directory using SHA256";
    "hash3" = "  Checks all files in your current directory using SHA384";
    "hash5" = "  Checks all files in your current directory using SHA512";
    "help" = "   Will display this command list";
    "exit" = "   Allows you to exit the script";
    "cd" = "     Allows you to change directories, you can also use chdir or Set-Location";
    "ls" = "     Allows you to see all files and sub-directories, you can also use Get-ChildItem"
}

<#Making the algs a variable for standardization in the functions#>

$m5 = "MD5"
$m3d = "MACTripleDES"
$ripe = "RIPEMD160"
$hsh1 = "SHA1"
$hsh2 = "SHA256"
$hsh3 = "SHA384"
$hsh5 = "SHA512"


#This outputs the hashtable line by line in order, also my first time using GetEnumerator and Sort-Object
function help {
    Write-Host "Note: You can still use the parameters for commands like 'Get-ChildItem, and Set-Location'" -ForegroundColor Red  
    $commands.GetEnumerator() |Sort-Object Name| ForEach-Object {
    Write-Output "$($_.key): $($_.value)"} | Write-Host -ForegroundColor DarkYellow
}  

function getlo {
    pwd
} 
function hashm {
    if ((Get-ChildItem -File) -eq $null) {
        Write-Host
        Write-Host "There are no files in this directory or access is denied" -ForegroundColor Yellow
    }
    else {
        Write-Host "Checking you current directory for all file's hashes in",$m5 
        Get-ChildItem *| Get-FileHash -Algorithm $m5| Format-List
    }
}

function hashm3d {
    if ((Get-ChildItem -File) -eq $null) {
        Write-Host
        Write-Host "There are no files in this directory or access is denied" -ForegroundColor Yellow
    }
    else {
        Write-Host "Checking you current directory for all file's hashes in",$m3d
        Get-ChildItem *| Get-FileHash -Algorithm $m3d| Format-List
    }
}

function hashr {
    if ((Get-ChildItem -File) -eq $null) {
        Write-Host
        Write-Host "There are no files in this directory or access is denied" -ForegroundColor Yellow
    }
    else {
        Write-Host "Checking you current directory for all file's hashes in",$ripe
        Get-ChildItem *| Get-FileHash -Algorithm $ripe| Format-List
    }
}

function hash1 {
    if ((Get-ChildItem -File) -eq $null) {
        Write-Host
        Write-Host "There are no files in this directory or access is denied" -ForegroundColor Yellow
    }
    else {
        Write-Host "Checking you current directory for all file's hashes in",$hsh1
        Get-ChildItem *| Get-FileHash -Algorithm $hsh1 | Format-List
    }
}

function hash2 {
    if ((Get-ChildItem -File) -eq $null) {
        Write-Host
        Write-Host "There are no files in this directory or access is denied" -ForegroundColor Yellow
    }
    else {
        Write-Host "Checking you current directory for all file's hashes in",$hsh2
        Get-ChildItem *| Get-FileHash -Algorithm $hsh2 | Format-List
}
}

function hash3 {
    if ((Get-ChildItem -File) -eq $null) {
        Write-Host
        Write-Host "There are no files in this directory or access is denied" -ForegroundColor Yellow
    }
    else {
        Write-Host "Checking you current directory for all file's hashes in",$hsh3
        Get-ChildItem *| Get-FileHash -Algorithm $hsh3 | Format-List
}
}

function hash5 {
    if ((Get-ChildItem -File) -eq $null) {
        Write-Host
        Write-Host "There are no files in this directory or access is denied" -ForegroundColor Yellow
    }
    else {
        Write-Host "Checking you current directory for all file's hashes in",$hsh5
        Get-ChildItem *| Get-FileHash -Algorithm $hsh5 | Format-List 
}
}

cls
<#Title for the script, used ASCII letters from patorjk.com#>
$Title = @"
 ██▓ ███▄    █ ▄▄▄█████▓ █████   ▄████  ██▀███   ██ ▄▄▄█████▓ ██   ██▓    ▄████▄   ██░ ██ ▓█████  ▄████▄   ██ ▄█▀ █████  ██▀███  
▓██▒ ██ ▀█   █ ▓  ██▒ ▓▒ █   ▀  ██▒ ▀█▒▓██ ▒ ██ ▓██▒▓  ██▒ ▓▒ ▒██  ██▒   ▒██▀ ▀█  ▓██░ ██ ▓█   ▀ ▒██▀ ▀█   ██▄█▒ ▓█   ▀ ▓██ ▒ ██▒
▒██▒ ██  ▀█ ██▒▒ ▓██░ ▒░▒███   ▒██ ▄▄▄░ ██ ░▄█ ▒▒██▒  ▓██░ ▒░  ▒██ ██░   ▒▓█    ▄ ▒██▀▀██░▒███    ▓█    ▄  ███▄░ ▒███   ▓██ ░▄█ ▒
░██░ ██▒  ▐▌██▒░ ▓██▓ ░ ▒▓█  ▄ ░▓█  ██▓▒██▀▀█▄  ░██░░ ▓██▓ ░   ░ ▐██▓░   ▒▓▓▄ ▄██ ░▓█ ░██ ▒▓█  ▄ ▒▓▓▄ ▄██▒ ██ █▄ ▒▓█  ▄ ▒██▀▀█▄  
░██░ ██░   ▓██░  ▒██▒ ░ ░▒████▒░▒▓███▀▒░██▓ ▒██▒░██░  ▒██▒ ░   ░ ██▒▓░   ▒ ▓███▀ ░░▓█▒░██▓░▒████▒▒ ▓███▀ ░▒██▒ █▄░▒████▒ ██▓ ▒██▒
░▓    ▒░   ▒ ▒   ▒ ░░   ░░ ▒░ ░ ░▒   ▒ ░ ▒▓ ░▒▓░░▓    ▒ ░░      ██▒▒▒    ░ ░▒ ▒  ░ ▒ ░░▒░▒░░ ▒░ ░░ ░▒ ▒  ░▒ ▒▒ ▓▒░░ ▒░ ░░ ▒▓ ░▒▓░
 ▒    ░░   ░ ▒░    ░     ░ ░  ░  ░   ░   ░▒ ░ ▒░ ▒ ░    ░     ▓██ ░▒░      ░  ▒    ▒ ░▒░ ░ ░ ░  ░  ░  ▒   ░ ░▒ ▒░ ░ ░  ░  ░▒ ░ ▒░
 ▒     ░   ░ ░   ░         ░   ░ ░   ░   ░░   ░  ▒ ░  ░       ▒ ▒ ░░     ░         ░  ░░ ░   ░   ░        ░ ░░ ░    ░     ░░   ░ 
 ░           ░             ░  ░      ░    ░      ░            ░ ░        ░ ░       ░  ░  ░   ░  ░░ ░      ░  ░      ░  ░   ░     
                                                              ░ ░        ░                       ░                               
"@
Write-Host $Title -ForegroundColor Yellow 
Write-Host ""
Write-Host "Use the program to check the inital hashes of your files, then use the program again later to check the integrity of those files." -ForegroundColor Yellow
Write-Host ""
Write-Host "Type 'help' to see a list of commands" -ForegroundColor Yellow
<#The start of the actual script, and where the main input is supplied#>
$start = ""

while ($start -ne "exit") {
    $start = Read-Host " "

if ($start -in "help", "Help", "?") {
    help
    }
elseif($start -eq "hashm"){
    hashm
    }
elseif($start -eq "hashr"){
    hashr
    }
elseif($start -eq "hashm3d"){
    hashm3d
    }
elseif($start -eq "hash1"){
    hash1
    }
elseif($start -eq "hash2"){
    hash2
    }
elseif($start -eq "hash3"){
    hash3
    }
elseif($start -eq "hash5"){
    hash5
    }
elseif($start -like "Get-ChildItem*" -or $start -like "ls*") {
    Invoke-Expression $start 
    getlo                                                     
    }
elseif($start -like "cd*" -or $start -like "chdir*" -or $start -like "Set-Location*") {     
    Invoke-Expression $start
    getlo
    }
elseif ($start -ne "exit" -or $start -ne "Exit") {
    Write-Host "Use 'help' to see a list of commands" -ForegroundColor Yellow
    }
}
    

