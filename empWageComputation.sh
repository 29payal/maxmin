#!bin/bash -x

full=8
part=4
hrwage=20
total=0
totalwhr=0
day=1

while [[ $day -le 100 && $totalwhr -le 20 ]]
do
check=$((RANDOM%3))

case $check in
               0)
                  echo "He was absent"
                  salary=0
                  echo $salary
                ;;
                1)
                  echo "He was present on that day"
                  salary=$((full*hrwage))
                  echo $salary
                ;;
                 2)
                  echo "he took half a day"
                  salary=$((part*hrwage))
                  echo $salary
                ;;
                 esac
                salary=$((whr*hrwage))
                total=$((total+salary))
                ((day++))
done

echo $totalwhr
echo $total
