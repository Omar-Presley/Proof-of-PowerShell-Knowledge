#Arrays and Hashtables
<#My thoughts: arrays can be used to store multiple values in one variable,
while hashtable can allow you to supply many different objects and values
to said object which is acting as a sub-variable#>

$array = @("John", "Phil", "Sally", "Gil","Bobby","Luke")

$hashtable = @{John = "first"; Phil = "second"; Sally = "third"; Gil = "fourth"; Bobby = "fifth"; Luke = "sixth"}



#When the hash table is filled with strings like these you can to it easily
#Use .Add(), and .Remove(). You can also set items (e.g., $hashtable1.Set_Item("John",Seventh")
$hashtable1 = @{"John" = "first"; "Phil" = "second"; "Sally" = "third"; "Gil" = "fourth"; "Bobby" = "fifth"; "Luke" = "sixth"}

#Displays first value in the array
$array[0]
