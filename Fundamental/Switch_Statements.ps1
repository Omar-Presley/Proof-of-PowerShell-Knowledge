#Switch Statement Practice

<#My Thoughts: Switch Statements can be used to map a users input to the
values in the switch "table" to supply a output linked to those values.#>

cls
Write-Host "These are the houses that you may select." 
Write-Host "1. Targaryen"
Write-Host "2. Lannister"
Write-Host "3. Stark"
Write-Host "4. Random"

$house = Read-host "What do you choose?"

cls
Switch($house) {
    "Targaryen" {Write-Host "You're crazy!"; break}
    "Lannister" {Write-Host "We will wait and win when the time is right!"; break}
    "Stark" {Write-Host "Calm down and push forward!"; break}
    "Random" {Write-Host "What!"; break}
}
