

for (( i=0;i<5;i++ ))
do

num=$((RANDOM%2))

if [ $num -eq 0 ]
  then
     echo "HEAD WINS"
else
     echo "TAILS WINS"
fi

done
