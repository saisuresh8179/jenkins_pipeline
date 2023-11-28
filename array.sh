# arr=(10 20 30 40)
# sum=0
# for i in ${arr[*]}
# do
#    sum=`expr $sum + $i`
# done
# echo "Length of array ${#arr[*]}"
# echo $sum
arr=(10 20 30 40)
sum=0
for i in ${arr[@]}
do
   sum=$(expr $sum + $i)
done
echo "Length of array ${#arr[@]}"
echo "$sum"