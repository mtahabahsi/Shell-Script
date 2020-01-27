if [[ -d $1 ]]
then
cd $1
ls -lA > regular.txt
sum=0
while read a1 a2 a3 a4 a5 a6 a7 a8 a9
do
echo $a5
if [[ $a5 -eq "0" ]]
then
sum=`expr $sum + 1`
fi
done < regular.txt
echo Boyutu 0 olanların sayısı =`expr $sum - 1`
else
echo dizin degil
fi
