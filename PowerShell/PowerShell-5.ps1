#Task01
Param (
    [string]$filename = ".\users.csv"
)
$filePa
th = Split-Path($myInvocation.MyCommand.Path)
$fullPath = Join-Path -Path $filePath -ChildPath $filename

If (Test-Path -Path $fullPath -PathType leaf) {
    Import-Csv $filename | ForEach-Object {
        Write-Host ("Hello my colleague" + " " + $_.Firstname + " " + $_.Lastname + ", " + "This is your new account:")
        Write-Host (($_.Lastname.substring(0,4) + $_.Firstname.substring(0,2)).ToLower())
    }
}  
Else {
    Write-Host "The file does not exist, try again"
}

#Task02
Param (
    [string]$filename
)

$filePath = Split-Path($myInvocation.MyCommand.Path)
$fullPath = Join-Path -Path $filePath -ChildPath $filename

If (Test-Path -Path $fullPath -PathType leaf) {
    foreach ($line in Get-Content $filename) {
        Start-Process -Filepath "Firefox" -ArgumentList $line
    }
}
Else {
    Write-Host "The file does not exist, try again"
}

#Task03
Param (
    [string]$filename
)

$filePath = Split-Path($myInvocation.MyCommand.Path)
$fullPath = Join-Path -Path $filePath -ChildPath $filename

If (Test-Path -Path $fullPath -PathType leaf) {
    Import-Csv $filename | ForEach-Object {
        $nickname = ($_.Lastname.substring(0,4) + $_.Firstname.substring(0,2)).ToLower()
        $permission = Read-Host ("A new local account $nickname will be created for ", $_.Firstname, $_.Lastname, "[Yes]/No")
        If ($permission -eq "Yes") {
            New-LocalUser -Name $nickname -NoPassword | Enable-LocalUser
        }
        Else {
            Write-Host "The account was not created, exitting"
            continue
        }
    }
}
Else {
    Write-Host "The file does not exist, try again"
}

#Task04
