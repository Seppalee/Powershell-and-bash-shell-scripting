#Task01
#!/bin/bash
echo "Give a file to remove"
read filename

if [ ! -s $filename ] && [ -f $filename ]
then
  rm $filename
  echo "File $filename is deleted"
else
  echo "File does not exist or is not empty"
fi

#Task02
#!/bin/bash
filepath="/etc/hosts"
if [ -e $filepath ]
then
  echo "$filepath available"
  if [ -w $filepath ]
  then
    echo "You have permission to edit the file"
  else
    echo "You dont have permission to edit the file"
  fi
else
echo "File not available"
fi

#Task03
#!/bin/bash
while read -rp "Give an object to check: " VAR1
do
   if [ -d $VAR1 ]
   then
     echo "Object is a directory"
   elif [ -f $VAR1 ]
   then
     echo "Object is a regular file"
   else
     echo "File is something else"
   fi
done

#Task04
#!/bin/bash
read -rp "Give username for the new user: " username

if id "$username" >/dev/null 2>&1; then
  echo "Account with that username already exists!"
else
  useradd -m -s /bin/bash "$username"
fi

#Task05
#!/bin/bash
echo "Choose the operation for calculation (-, +, *, /) :"
read ch

echo "Enter two numbers :"
read a
read b

case $ch in 
  +)res=$(($a + $b))
  ;;
  -)res=$(($a - $b))
  ;;
  \*)res=$(($a * $b))
  ;;
  \/)res=$(($a / $b))
  ;;
esac

echo "Result : $res"