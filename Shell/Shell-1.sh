#Task01
#!/bin/bash
read -p "Give first value: " VAL1
read -p "Give second value: " VAL2
A=$(($VAL1 + $VAL2))
B=$(($VAL1 - $VAL2))
C=$(($VAL1 * $VAL2))
echo "Addition: $A"
echo "Substraction: $B"
echo "Multiplication: $C"

#Task02
#!/bin/bash
read -p "Give a new filename: " filename
extension=${filename#*.}
name=${filename%.*}
now=$(date +"%Y-%m-%d")
touch /home/${USER}/${name}${now}.${extension}

#Task03
#!/bin/bash
read -p "Give directory to check: " dirpath
ls ${dirpath} | echo "There are $(wc -l) files in this directory"

#Task04
#!/bin/bash
read -p "Give filepath: " filepath
read -p "Give destination for copy of the file: " destination

cp ${filepath} ${destination}
echo "copied ${filepath} to ${destination}"

#Task05
#!/bin/bash
read -p "Give first filename: " file1
read -p "Give first filename: " file2
read -p "Give first filename: " file3

rm /home/${USER}/${file1}
rm /home/${USER}/${file2}
rm /home/${USER}/${file3}