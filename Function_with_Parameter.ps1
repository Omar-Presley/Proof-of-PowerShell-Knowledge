#Function with Parameter integration
<#My Thoughts: This is the simpliest example of parameter use in a function,
it is really cool to use functions in a way where you're build your 
own commands#>


function ping-google {
    param (
        $count
    )
    ping google.com -n $count
}

cls
$amount = read-host "How many times do you want to ping google?"

cls
Write-Host "Pinging Google"
ping-google -count $amount