source .venv/bin/activate

while IFS=$'\t' read -r -a myArray
do
 myoquant he-analysis ${myArray[0]} --stardist-path ${myArray[1]} --cellpose-path ${myArray[2]} --output-path results
done < "moliere-data/image_path_dataset.tsv"