read -p "enter the first number" x
declare -a arr
for ((i=1; i<=$x; i++))
do
#echo "$i"
if [ $(($i%2)) -eq 0 ]
then
#echo "even"
arr+=($i)
#else
#echo "odd"
fi
#echo "${arr[@]}"
done
echo "${arr[@]}"
