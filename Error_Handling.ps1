#Error Handling
<#My thoughts: This a simple example on error handling. Honestly not
the best example because ping is not the most error-prone command.
But this is how you would throw your own error. 
#>
cls
$in = Read-Host "Type a site you want to ping"

function someping {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [int32]$c
    )
    ping $in -n $c 
    Write-Error -Message "Hi I'm an error message" -ErrorAction Stop
}


try {someping -ErrorAction Stop} catch {Write-Host "The Error is" $_}
#{Write-Output "The Error is" Write-Ouput $_} also works 




