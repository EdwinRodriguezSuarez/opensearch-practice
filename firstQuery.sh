curl -X GET "https://localhost:9200/practice/_search?pretty=true" -ku admin:admin  -H 'Content-Type: application/json'  -d '{   
    "size": 50,
  "query": {
     "match_all": { 
     }
  }
}'
