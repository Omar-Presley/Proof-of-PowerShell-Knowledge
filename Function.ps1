#Funtions
<#My Thoughts: Really this a really weird way for me to showcase an 
extremely basic function. But functions can really be vital when making
huge programs#>

<#This function give a SHA512 hash of all files in the current working 
directory, if the right input is supplied.#>
function Get-Hash {
$secret = pwd
$rsecret = Get-ChildItem $secret
$hsecret = Get-FileHash $rsecret -Algorithm SHA512

$jawn = read-host "This is a test, so type something"

switch($jawn) {
"something" {Write-Host "You found one!";break}
"nothing" {Write-Host "Wow, how creative"; break}
"secret" {$hsecret; break}
}

}
cls
Get-Hash