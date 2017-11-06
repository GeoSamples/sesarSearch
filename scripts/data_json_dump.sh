for i in $(cat igsnlist_300.csv); do
   echo "${i}"
   curl -X GET -H "accept: application/json" "https://app.geosamples.org/webservices/display.php?igsn=${i} -L" > json/${i}.json
done 
