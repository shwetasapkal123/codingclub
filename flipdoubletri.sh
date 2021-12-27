heads1=0
tails1=0
heads2=0
tails2=0
heads3=0
tails3=0
flip=1

while [ $flip -le 10 ]
do
singlet=$((RANDOM%2))
flip=$((flip+1))
if [ $singlet -eq 0 ]
then 
echo "H"
heads=$((heads1+1))
else
echo "T"
tails=$((tails1+1))
fi




doublet=$((RANDOM%3))

if [ $doublet -eq 0 ]
then
echo "HH"
heads2=$((heads2+1))
elif [ $doublet -eq 1 ]
then
echo "HT"
heads2=$((heads2+1))
tails2=$((tails2+1))
elif [ $doublet -eq 2 ]
then
echo "TH"
heads2=$((heads2+1))
tails2=$((tails2+1))
else
echo "TT"
tails2=$((tails2+1))
fi




trip=$((RANDOM%8))

if [ $trip -eq 0 ]
then 
echo "HHH"
heads3=$((heads3+1))
elif [ $trip -eq 1 ]
then
echo "HHT"
heads3=$((heads3+1))
elif [ $trip -eq 2 ]
then
echo "HTH"
heads3=$((heads3+1))
elif [ $trip -eq 3 ]
then
echo "HTT"
tails3=$((tails3+1))
elif [ $trip -eq 4 ]
then
echo "THH"
heads3=$((heads3+1))
elif [ $trip -eq 5 ]
then
echo "THT"
tails3=$((tails3+1))
elif [ $trip -eq 6 ]
then
echo "TTH"
tails3=$((tails3+1))
else
echo "TTT"
tails3=$((tails3+1))
fi
done



echo "You got $heads1 HEADS And $tails1 TAILS."
if [ $heads1 -gt $tails1 ]
then
echo "Win"
else
echo "Loose"
fi
echo "You got $heads2 HEADS And $tails2 TAILS."
if [ $heads2 -gt $tails2 ]
then
echo "Win"
else
echo "Loose"
fi
echo "You got $heads3 HEADS And $tails3 TAILS."
if [ $heads3 -gt $tails3 ]
then
echo "Win"
else
echo "Loose"
fi
