#!/bin/bash
#
# data_json_dump.sh
#
# This script will create JSON file for each IGSN listed in a text file.
#

#Loop through each IGSN in igsnlist_300.csv file
for i in $(cat igsnlist_300.csv); do
   #echo "${i}"
   #Call SESAR web service to create JSON file for each IGSN
   curl -s -X GET -H "accept: application/json" "https://app.geosamples.org/webservices/display.php?igsn=${i} -L" > ../json/${i}.json
done 
