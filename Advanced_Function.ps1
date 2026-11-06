#Advanced Function with Parameter integration
<#My Thoughts: This is a replica of the "function with parameter"
 script, but advanced.#>


function ping-google {
    #Used to turn the function into a advanced function
    [CmdletBinding()] 
    param (
        #Makes the parameter mandatory
        [Parameter(Mandatory)]
        [int32]$count
    )
    ping google.com -n $count
}

cls
$amount = read-host "How many times do you want to ping google?"

cls
Write-Host "PINGING GOOGLE"
ping-google -count $amount