#If/Else loops
<#My Thoughts: If/else statements are pretty straight forward 
across most languages, but the main thing to note is the difference
in operators, and syntax from languages like python.#>
cls
$ifloop = Read-Host "Input a number from 1 to 10"

if ($ifloop -eq 10) {
        Write-Host "You really input the highest number?"
    }
    Elseif ($ifloop -eq 1 -and $ifloop -le 2) {
        Write-Host "You really picked the lowest number, huh?"
    }
    Elseif ($ifloop -ge 2 -and $ifloop -le 9) {
        Write-Host "Yeah, your a normal person."
    }
    Else {
        Write-Host "FOLLOW THE PROMPT, goober!"
    }
     