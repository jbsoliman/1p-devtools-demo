input_file=vaults.csv


while IFS="," read input_name 
do
	op vault create "$input_name" 
done < <(sed "s/\"/'/g" <(tail $input_file)) 