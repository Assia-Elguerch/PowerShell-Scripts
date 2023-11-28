Get-Process

$NAME = Read-Host "The name of the process "
$ID = Read-Host "The ID of the process"
$action = Read-Host "Chosean action the cases are sensetive stop - start - wait"

if ( $action -eq "stop"){
Stop-Process -id $ID -Force
}Elseif ( $action -eq "start"){
Start-Process $NAME
}Elseif ( $action -eq "wait"){
Wait-Process $NAME
}Else {
Write-Host "Enter a valid action or a valid process name"
}

