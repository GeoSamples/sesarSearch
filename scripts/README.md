1. Create a file which contains list of IGSNs. E.G. igsnlist_300.csv
2. Run data_json_dump.sh to create json file for each IGSN and store them in json directory.
   touch error.log;
   nohup sh data_json_dump.sh > error.log &;
   It takes about 10 hours to create 300,000 json files.
3. Run date_json_post.sh to post IGSN content to sesardb index in ElasticSearch.
   nohup sh data_json_post.sh 2>> error.log &;
