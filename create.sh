curl  -X PUT "https://localhost:9200/practice" -ku 'admin:admin' -H "Content-Type: application/x-ndjson"  --data-binary "@practice-field_mappings.json"