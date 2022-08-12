New-PWLogin -UseGui

# Where would you like to save the csv files?
$folderpath = "C:\Users\georgios.pavlidis\Documents\"

# Which group name would you like to export? Make sure you include an asterisk if you want to export more than one group.
$grps = get-PWGroups -GroupName "158454-2192*"

foreach ($grp in $grps)
{
$outputfile = $folderpath+$grp.Name+".csv"
Get-PWUsersInGroup -GroupName $grp.Name | Export-Csv $outputfile -Append

}