#Task01
Write-Host (Get-ChildItem $HOME).count "files found at" $HOME

# Task02
$given_folder = Read-Host("Please, give the folder to search:")
$files = Get-ChildItem -Path $given_folder
$i = $files.Count
Write-Host $i "files found at" $given_folder

#Task03
Param(
    [string]$a = $args[0],
    [string]$b = $args[1],
    [string]$c = $args[2]
)

$words = $a,$b,$c
$sorted = $words | Sort-Object Length -desc 

Write-Host "Your ordered words are:" $sorted

#Task04
Param(
    [string]$name = "unknown",
    [int]$hellos = 1
)

for ($i=0; $i -le $hellos; $i++){
    Write-Host "Hello $name"
}

#Task05
Param(
    [string]$address = "192.168.1.1",
    [int]$repeats = 1
)

Write-Host "I will ping address $address $repeats time(s), okay?"
$confirm = Read-Host "[Y/n]"

if ($confirm -eq "Y") {
    for ($i=1; $i -le $repeats; $i++) {
        Write-Host "try $i to ping: $address"
    }
}
elseif ($confirm -eq "n") {
    Write-Host "Cancelling..."
}