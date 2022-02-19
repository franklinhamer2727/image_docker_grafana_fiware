curl -iX PATCH \
    --url 'http://localhost:1026/v2/entities/urn:ngsi-ld:Product:001/attrs' \
    -H 'Content-Type: application/json' \
    -H 'fiware-path:/' \
    -H 'fiware-service: sensores'\
    --data '{
        "quantity":{"type":"Integer","value":'$1'},
        "size":{"type":"Text", "value":"'$2'"}
        }'