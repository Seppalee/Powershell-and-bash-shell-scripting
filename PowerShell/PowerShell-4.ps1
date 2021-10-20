#Task01
function dirf {
    Get-ChildItem $HOME | 
    Where-Object { ! $_.PSIsContainer} | 
    Format-Table Name, Length, LastWriteTime
}

#Task02
function dirf2 {
    Param($ext)
    Get-ChildItem $HOME | 
    Where-Object {$_.Name -like "*$ext"} |
    Format-Table Name, Length, LastWriteTime
}

#Task03
Function Save-Workstations {
    Param($filename)
    $a = @()
    While($value -ne "") {
        $value = (Read-Host("Give a workstation name, press Enter to quit"))
        $a += $value
    }

    $pathToFile = Join-Path $HOME $filename
    $a | Out-File -FilePath $pathToFile
    Write-Host "$pathToFile created successfully"
}

#Task04
Function Add-Files {
    $b = @()
    While($file -ne "") {
        $file = (Read-Host("Give a file name name, press Enter to quit"))
        $b += $file
    }

    $maara = $b.Count - 1
    $date = Get-Date -Format "dd/MM/yyyy HH:mm"

    foreach($item in $b) {
        $joinedPath = Join-Path -Path $HOME -ChildPath $item
        $date | Out-File -FilePath $joinedPath
    }
    Write-Host "$maara files were created successfully"
}