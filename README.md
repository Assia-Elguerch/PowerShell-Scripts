##PowerShell Scripts 📜
#Process Management Script 🔄
Overview
This PowerShell script allows you to manage processes on a Windows system.

Instructions
Run the script.
Enter the name of the process.
Enter the ID of the process.
Choose an action (case-sensitive):
stop: Stop the specified process.
start: Start a new process.
wait: Wait for a process to complete.
Example
powershell
Copy code
Get-Process

<pre>
$NAME = Read-Host "The name of the process "
$ID = Read-Host "The ID of the process"
$action = Read-Host "Choose an action: stop - start - wait"

if ($action -eq "stop") {
    Stop-Process -id $ID -Force
} ElseIf ($action -eq "start") {
    Start-Process $NAME
} ElseIf ($action -eq "wait") {
    Wait-Process $NAME
} Else {
    Write-Host "Enter a valid action or a valid process name"
}
```
</pre>
#User and Group Management Script 👥
Overview
This PowerShell script allows you to manage local users and groups on a Windows system.

Instructions
Run the script.
Choose to manage Users or Groups (case-sensitive).
Based on the selection, perform the desired action.
User Management Options
1: Disable a User
2: Enable a User
3: Add a User
4: Remove a User
5: Rename a User
6: Show all users
Group Management Options
1: Show users in a group
2: Add a member to a group
3: Add a group
4: Remove a group
5: Rename a group
6: Show all groups
7: Remove a user from a group
Example
powershell
Copy code

<pre>
```powershell
$Type = Read-Host "Choose Users to manage users or Groups to manage groups"

if ($Type -eq "Users") {
    # User management logic...
} ElseIf ($Type -eq "Groups") {
    # Group management logic...
} Else {
    Write-Host "Enter Users or Groups; it is case-sensitive"
}
```
</pre>
Note
Please follow the on-screen prompts to provide necessary information for each operation.
For security-related actions, such as password entry, the script uses secure string input.
Feel free to customize and enhance these scripts based on your specific requirements! 🚀





