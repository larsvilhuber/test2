#!/bin/bash

for program in $(ls [01][0-9]_*)
do 
   echo "Next program in sequence: $program"
   extension=$(echo $program | awk -F. ' { print $2 } ')
   echo "Going to run $extension"
   case $extension in 
      R|r)
         echo "***Rscript $program"
         ;;
      do|DO)
         echo "***stata-mp -b $program"
         ;;
      sas|SAS)
         echo "***sas $program"
         ;;
   esac
done
