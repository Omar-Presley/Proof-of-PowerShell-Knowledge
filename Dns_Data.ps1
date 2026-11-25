#Dns Recon

<#Simple script that pulls multiple dns records from a user provided domain.#>

cls

$dnshost = Read-Host "What domain do you want to enumerate?"

cls
function dnsdata {
    $records = "A", "AAAA", "MX", "TXT", "NS", "CNAME", "SOA"
    foreach ($record in $records) {
        Resolve-DnsName -Name $dnshost -Type $record -ErrorAction SilentlyContinue
    }

}

dnsdata