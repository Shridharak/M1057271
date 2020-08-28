#!/usr/bin/env bash
filecount=$(ls -a| wc -l)
asknumber (){
        read -p "Guess the how many file in this Directory : " num

        while true;
do
        if [[ $num ]] && [ $num -eq $num 2>/dev/null ]
        then
        break
        else
        echo "Please enter the number"
        read num
        fi
done
        if  [[ $num -eq $filecount ]]
        then
        echo "Congratulations...Entered Number is correct"

elif [[ $num -lt $filecount ]]; then
        echo "Your Guess is Low"
        echo ""
        asknumber
else
        echo "Your Guess is High"
        echo ""
        asknumber
fi
}

asknumber