$Type = Read-Host " Chose Users to manage users or Groups to manage groups"

if ($Type -eq "Users"){

$optionUsers = Read-Host "
1- Disable a User
2- Enable a User 
3- Add a User
4- Remove a User
5- Rename a User
6-show the users 
Type the number of the option     " 

if($optionUsers -eq "1"){
$user = Read-Host "Name of the user"
Disable-LocalUser -Name $user
} 
elseif ($optionUsers -eq "2"){
$user = Read-Host "Name of the user"
Enable-LocalUser -Name $user
} 
elseif ($optionUsers -eq "3"){
$user = Read-Host "Name of the user"
$password = Read-Host "Enter the password" -AsSecureString
$Description = Read-Host "Enter the descriptio"
New-LocalUser -Name $user -Password $password -Description $Description
} 
elseif ($optionUsers -eq "4"){
$user = Read-Host "Name of the user"
Remove-LocalUser -Name $user
} 
elseif ($optionUsers -eq "5"){
$user = Read-Host "Name of the user"
$user1 = Read-Host "Name of the new user name"
Rename-LocalUser -Name $user -NewName $user1
} 
elseif ($optionUsers -eq "6"){
Get-LocalUser
} 
else {
Write-Host "Type the number of the option 1 -6"
} 
}
elseif ($Type -eq "Groups"){
$optiongroups = Read-Host "
1- show users in a group
2- add a member to a group
3- Add a group
4- Remove a group
5- Rename a group
6- show the groups 
7- remove a user from a group
Type the number of the option     " 

if($optiongroups -eq "1"){
$group = Read-Host "Name of the group"
Get-LocalGroupMember -Group $group
} 
elseif ($optiongroups -eq "2"){
$user = Read-Host "Name of the user"
$group = Read-Host "Name of the group"
Add-LocalGroupMember -Group $group -Member $user
} 
elseif ($optiongroups -eq "3"){
$group = Read-Host "Name of the group"
New-LocalGroup -Name $group
} 
elseif ($optiongroups -eq "4"){
$group = Read-Host "Name of the group"
Remove-LocalGroup -Name $group
} 
elseif ($optiongroups -eq "5"){
$group = Read-Host "Name of the group"
$group1 = Read-Host "Name of the new group name"
Rename-LocalGroup -Name $group -NewName $group1
} 
elseif ($optiongroups -eq "6"){
Get-LocalUser
} 
elseif ($optiongroups -eq "7"){
$group = Read-Host "Name of the group"
$user = Read-Host "Name of the user"
Remove-LocalGroupMember -Group -Member
} 
else {
Write-Host "Type the number of the option 1 -6"
} 

}
else {

Write-Host "enter Users or Groups it is case sensitive"

}