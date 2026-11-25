#Active Directory Commands
<#My Thoughts: This device is not actively set up on a active directory 
domain, but I do a lot of AD management and scripts at work, and 
all of these are useful to know to make your own AD scripts 
These are not all the AD commands but some of the main ones.#>


#This imports all the ActiveDirectory Commands
Import-Module ActiveDirectory

#How to query ADUser information
Get-ADUSer 
Get-ADUser -Identity "user.name" -Properties *
#Making the AD user information a variable to then query specific sections faster
$user = Get-ADUser "name"
#Example of that
$user.GivenName
#Change AD User properties
Set-ADUser -Identity "name" -Surname "namechange"
<#This is how you would add a new user, but key thing is the password 
wouldn't be in plain text in actual enviroments, it's just easier to
show as an example.#>
New-ADUser -Name "name" -GivenName "gname" -Surname "surname" -SamAccountName "sam" -UserPrincipalName "UPN" -path "Organization.Unit.Path" -AccountPassword(ConvertTo-SecureString "psswd" -AsPlainText) -Enabled $true
<#OU Path EX: "OU=Administration, OU=Sections,OU=Finance,DC=example,DC=org"#>

#Querying Group 
Get-ADGroup "name"
#Adding a members to a group
Add-ADGroupMember -Identity "groupname" -Members "user.name"
#Removing members from a group
Remove-ADGroupMember -Identity "groupname" -Members "user.name"

