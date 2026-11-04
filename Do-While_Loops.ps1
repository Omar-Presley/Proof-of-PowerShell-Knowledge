#Do-While Loop
<#My Thoughts: Do-while loops make the logic behind while loops simpler,
It also makes it easier to think of capabilities and use-cases for these
types of loops.#>
cls
$DC  = @("batman", "superman", "flash","green latern","aquaman","blue beetle")
$counter =  0
do{
    Write-Host $DC[$counter] "is awesome!"
    Write-Host "This is value number" $counter "in the DC heroes array"
    $counter ++
} while ($counter -ne 6) 