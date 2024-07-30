#!/bin/bash

# My input file
input_file="/home/katz/dilans-blog/dilans_raw.csv"

# My output file
output_file="/home/katz/dilans-blog/dilans_data.csv"

awk -F';' '{
    # Split to date and time
    split($1, datetime, " ")
    date = datetime[1]
    time = datetime[2]
    # Reconstruct the first field
    $1 = date ";" time

    # Add to the output line
    output = $1

    # Append all the remaining fields
    for (i = 2; i <= NF; i++) {
        output = output ";" $i
    }

    print output

}' "$input_file" > "$output_file"