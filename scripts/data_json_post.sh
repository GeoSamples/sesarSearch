ls jsondata/*.json > fileList
for i in $(cat dumps.txt); do
   echo "${i}"
   IFS='.' read -r -a array <<< "$i"
   echo "${array[0]}"
   IFS='/' read -r -a arr <<< "${array[0]}"
   echo "${arr[1]}"
   curl -s -XPOST stats-dev.ldeo.columbia.edu:9200/sesardb/sample/${arr[1]} -d @${i}
done 
/bin/rm -fR fileList
