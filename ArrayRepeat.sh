repeated_digits=()
	

for i in {0..100}; do

  if [[ $(echo $i | grep -E '(.)\1') ]]; then
    # if it has a repeated digit, add it to the array
    repeated_digits+=($i)
  fi
done


echo "Digits that are repeated twice: ${repeated_digits[@]}"
