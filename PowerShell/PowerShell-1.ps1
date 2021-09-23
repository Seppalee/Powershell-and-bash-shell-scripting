# Task01
$date = Get-Date -Format "dd/mm/yyyy"
Write-Host "Logged username is" $env:username "and today is" $date

# Task02
$firstname = Read-Host ("Please, give your firstname:")
$lastname = Read-Host ("Please give your lastname:")
$groupcode = Read-Host("Please, give your groupcode:")

Write-Host "Welcome to course:" $firstname $lastname $groupcode

#Task03
[int]$number1 = Read-Host("Give the first integer")
[int]$number2 = Read-Host("Give the second integer")

$sum = $number1 + $number2
$substraction = $number1 - $number2
$multiplication = $number1 * $number2
$division = $number1 / $number2

Write-Host "Sum is" $sum
Write-Host "Substraction is" $substraction
Write-Host "Multiplication is" $multiplication
Write-Host "Division is" $division

#Task04
$namelist = "Pekka", "Jari", "Minna", "Karri", "Aapo", "Liisa", "Sirpa"

Write-Host "There are" $namelist.Count "names:"
$namelist

Write-Host "First name is" $namelist[0] "and the last name is" $namelist[-1]

#Task05
.\countfiles.ps1