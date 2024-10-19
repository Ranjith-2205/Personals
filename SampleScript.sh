 #!/bin/bash

# for num in {1..100}
# do
#   if [ $((num % 3)) -eq 0 ] && [ $((num % 5)) -eq 0 ] && [ $((num % 15)) -ne 0 ]
#   then
#     echo $num
#   fi
# done

#!/bin/bash

n=100

for ((i=1; i<=n; i++))
do
  if [ $((i % 3)) -eq 0 ] && [ $((i % 5)) -eq 0 ] && [ $((i % 15)) -ne 0 ]
  then
    echo $i
  fi
done
