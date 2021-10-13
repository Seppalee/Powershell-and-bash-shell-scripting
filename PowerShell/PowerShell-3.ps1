#Task01
Param (
    $foldername
)

$combined_folder = Join-Path -Path $PSScriptRoot $foldername
$a = Test-Path -Path $combined_folder

if ($a -eq $True) {
    Write-Host (Get-ChildItem $foldername | Measure-Object).Count "files in the folder" $foldername
    Get-ChildItem $combined_folder | Format-Table Name
}
else {
    Write-Host "Sorry, no such folder as" $foldername
}

#Task02
Param (
    $foldername,
    $filename
)


$combined_folder = Join-Path -Path $PSScriptRoot $foldername
$filepath = Join-Path -Path $combined_folder $filename

$a = Test-Path -Path $combined_folder
$b = Test-Path -Path $filepath -PathType Leaf

if ($a -eq $True) {
    if ($b -eq $True) {
        Write-Host "$filename exists!"
    }
    else {
        Write-Host "Sorry, $filename in the $foldername does not exist."
    }
}
else {
    Write-Host "Sorry, no such folder as" $foldername
}

#Task03
Param (
    $foldername,
    $filename
)


$combined_folder = Join-Path -Path $PSScriptRoot $foldername

$filepath = Join-Path -Path $combined_folder $filename

$a = Test-Path -Path $combined_folder

if ($a -eq $True) {
    if (Test-Path -Path $filepath -PathType Leaf) {
        Write-Host "$filename exists!"
    }
    else {
        Write-Host "The file does not exist."
        $create = Read-Host "Create the file $filename? [Y/n]"
            if ($create -eq "Y") {
                New-Item -Path $filepath -ItemType File
            }
            else {
                Write-Host "Stopping..."
            }
    }
}
else {
    Write-Host "Sorry, no such folder as" $foldername
}

#Task04
Param (
    $foldername,
    $filename,
    $number
)

$combined_folder = Join-Path -Path $PSScriptRoot $foldername

$filepath = Join-Path -Path $combined_folder $filename
$a = Test-Path -Path $combined_folder

do {
    if (a -eq $False) {
        New-Item -Path $combined_folder -ItemType Directory
    }
}
until ($a -eq $True)
Write-Host "Folder $foldername exists"

for ($i=0; $i -lt $number; $i++) {
    New-Item -Path $filepath -ItemType file
}

Write-Host "$number files called $filename has been created"