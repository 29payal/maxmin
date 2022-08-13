#!bin/bash -x

for((i=0;i<=10;i++))

do
     num=$(((RANDOM % 999) +100))
     result[$i]=$num
done
echo ${result[@]}

sort -n <(printf "%s\n" "${result[@]}")
secondgreatest=$(printf '%s\n' "${result[@]}" | sort -n | tail -2 | head -1)
secondsmallest=$(printf '%s\n' "${result[@]}" | sort -n | tail -2 | head -1)

echo $secondgreatest "big"
echo $secondsmallest "small"


