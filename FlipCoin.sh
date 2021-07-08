
count=0
count1=0

for (( i=0;i<50;i++ ))
do

num=$((RANDOM%2))

if [ $num -eq 0 ]
  then
     #echo "HEAD WINS"
        count=$((count+1))
          if [ $count -ge 21 ]
             then
                  echo " Heads wins won 21 times"
                        if [ $count -gt $count1 ]
				then
    				diff=$(( count-count1 ))
     				echo "HEAD Won By "$diff
			else
    				diff=$(( count1-count ))
     				echo "TAIL Won By"$diff
			fi

                    		exit
          fi
else
     #echo "TAILS WINS"
        count1=$((count1+1))
         if [ $count1 -ge 21 ]
         then
               echo " Tails won 21 Times"
		 if [ $count -gt $count1 ]
			then
    			diff=$(( count-count1 ))
     			echo "HEAD Won By "$diff
		else
    			diff=$(( count1-count ))
     			echo "TAIL Won By"$diff
		fi

                exit
         fi
fi

done


if [ $count -gt $count1 ]
then
    diff=$(( count-count1 ))
     echo "HEAD Won By "$diff
else
    diff=$(( count1-count ))
     echo "TAIL Won By"$diff
fi
