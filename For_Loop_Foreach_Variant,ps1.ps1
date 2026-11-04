<#By adding "foreach" you can simplify using the values in the array.
If you don't need to be as specific with which value in the array needs
to be output. You can use this version of the for-loop to get the same
result.#>

cls
$Shrek = @("Fiona", "Donkey", "Shrek", "Dragron","The Muffin Man")

Foreach($instance in $Shrek){
    Write-Host "Hey," $instance "is here"
}