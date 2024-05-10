input_file=groups.csv


while IFS="," read input_name 
do
	op group create "$input_name" 
done < <(sed "s/\"/'/g" <(tail $input_file)) 