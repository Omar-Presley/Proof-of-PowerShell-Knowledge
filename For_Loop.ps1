#For Loop
<#My thoughts: For loops have are breaken down the same way, and 
are extremely useful for listing arrays quickly and calling their
values in specific prompts or commands.#>

cls
$Shrek = @("Fiona", "Donkey", "Shrek", "Dragron","The Muffin Man")

#In for loops you'll have a counter and then a condition.
For($counter = 0; $counter -le 4; $counter++){
    Write-Host "Hey," $Shrek[$counter]
}

<#A better way to do this would be to have the counter repeat by 
length of the array instead of by a given number. For example
For($counter = 0; $counter -le ($Shrek.Length -1);$counter++){}
The (-1) is to stop the extra element that usually get's read.
If length doesn't show that extra element then you can have
For($counter = 0; $counter -le $Shrek.Length; $coutner++){}#>