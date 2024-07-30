#!/bin/bash

# My input file
input_file="/home/katz/dilans-blog/dilans_data.csv"

# My output file
output_file="/home/katz/dilans-blog/tmp.csv"

awk -F';' '{
    if ($NF ~ /^(Asia|Africa|Australia|Europe|North America|South America)$/ && NF == 6) {
    # When we read these fields in the sixth row, we modify them
        $NF = ";" $NF
    }
    print $0

}' OFS=';' "$input_file" > "$output_file"