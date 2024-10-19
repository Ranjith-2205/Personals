#!/bin/bash
set +x
x=mississipieeeessssssssshsshssshsss

grep -o "s"<<<"$x" | wc -l

# To find both s and e 

x=mississipieeeessssssssshsshssshsss

# Count occurrences of 's'
s_count=$(grep -o "s" <<< "$x" | wc -l)

# Count occurrences of 'e'
e_count=$(grep -o "e" <<< "$x" | wc -l)

echo "Number of 's': $s_count"
echo "Number of 'e': $e_count"


