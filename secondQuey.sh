curl -X GET "https://localhost:9200/practice/_search?pretty=true" -ku admin:admin  -H 'Content-Type: application/json' -d '{
 "from": 0,
  "size": 100,
  "query": {
    "bool": {
      "must": {
        "multi_match": {
          "query": "getty",
          "type": "best_fields",
          "fields": ["title", "description", "copyright", "author", "tags"]
        }
      },
      "filter": {
        "term": {
          "status": "enable"
        }
      }
    }
  }
}' 
