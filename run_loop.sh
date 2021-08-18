#!/bin/bash

# run the loop

echo "===================================="
echo "    Starting the loop tutorial "
echo "===================================="

for length in $(seq 1 10)
do
   echo "Waiting for $length seconds"
   time ./module.sh $length &
done
wait

echo "===================================="
echo "           Done"
echo " And it took: "
