#Task01
#!/bin/bash
data=()

while read -rp "Give values, type exit to stop: " VAL
do
  if [[ "$VAL" == "exit" ]]
  then
    break
  else
    data+=("$VAL")
  fi
done

INDEX=0
for i in "${data[@]}"
do
  echo ${INDEX}: "$i"
  (( INDEX=INDEX+1 ))
done

#Task02
