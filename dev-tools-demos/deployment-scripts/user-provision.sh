input_file=people.csv


while IFS="," read input_name input_email 
do
	op user provision --name="$input_name" --email="$input_email"
done < <(sed "s/\"/'/g" <(tail $input_file)) 