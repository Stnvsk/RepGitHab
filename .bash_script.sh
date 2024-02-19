#! /bin/bash

read -p "Первая переменная:" num1
read -p "Вторая переменная:" num2
res="$((num1+num2))"
if [ "$res" -gt 0 ]; then
	echo "Результат: $res больше нуля"
fi
if [ "$res" -lt 0 ]; then
	echo "Результат: $res меньше нуля"
fi
if [ "$res" -eq 0 ]; then
	echo "Результат: $res равен нулю"
fi

------------------------------------------------------------

d=$1
r=$2
cd "$d"
tar cvzf archive.tar.gz *."$r"
touch size.txt
f=size.txt
name=archive.tar.gz
size=$(stat -c%s "$name") 
echo "Размер файла $size Байт" > "$f"
