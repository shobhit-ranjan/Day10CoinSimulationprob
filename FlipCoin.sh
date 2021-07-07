

num=$((RANDOM%2))

if [ $num -eq 0 ]
  then
     echo "HEAD WINS"
else
     echo "TAILS WINS"
fi
