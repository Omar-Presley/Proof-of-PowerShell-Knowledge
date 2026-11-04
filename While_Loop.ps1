#While Loops
<#My thoughts: This is similiar to the for loop but there is definitely
more functionality with this type of loop#>

<#This program is outputing the names of all values in the array, 
and what value they are numerically in the array#>
$DC  = @("batman", "superman", "flash","green latern","aquaman","blue beetle")
$counter =  0
while($counter -ne 6) {
    Write-Host $DC[$counter] "is awesome!"
    Write-Host "This is value number" $counter "in the DC heroes array"
    $counter++;
}