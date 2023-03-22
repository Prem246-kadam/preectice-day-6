for (( i=0; i<10; i++ ))
do
    random_number=$(( RANDOM % 900 + 100 ))
    random_numbers[$i]=$random_number
done


echo "Random numbers:"
echo "${random_numbers[@]}"

# find the 2nd largest and 2nd smallest element in the array
largest=${random_numbers[0]}
second_largest=${random_numbers[0]}
smallest=${random_numbers[0]}
second_smallest=${random_numbers[0]}

for (( i=0; i<10; i++ ))
do
    if [[ ${random_numbers[$i]} -gt $largest ]]
    then
        second_largest=$largest
        largest=${random_numbers[$i]}
    elif [[ ${random_numbers[$i]} -gt $second_largest && ${random_numbers[$i]} -ne $largest ]]
    then
        second_largest=${random_numbers[$i]}
    fi

    if [[ ${random_numbers[$i]} -lt $smallest ]]
    then
        second_smallest=$smallest
        smallest=${random_numbers[$i]}
    elif [[ ${random_numbers[$i]} -lt $second_smallest && ${random_numbers[$i]} -ne $smallest ]]
    then
        second_smallest=${random_numbers[$i]}
    fi
done

# print the results
echo "2nd largest number: $second_largest"
echo "2nd smallest number: $second_smallest"
