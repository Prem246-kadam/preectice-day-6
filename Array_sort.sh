for i in {1..10}; do
  num=$((RANDOM % 900 + 100))
  arr+=($num)
done


echo "Unsorted array: ${arr[@]}"

# sort the array
sorted_arr=($(echo "${arr[@]}" | tr ' ' '\n' | sort -n))
echo "Sorted array: ${sorted_arr[@]}"

# find the 2nd largest element
second_largest=${sorted_arr[-2]}
echo "Second largest element: $second_largest"

# find the 2nd smallest element
second_smallest=${sorted_arr[1]}
echo "Second smallest element: $second_smallest"
