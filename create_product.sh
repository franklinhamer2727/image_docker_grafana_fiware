curl -X POST \
    http://localhost:1026/v2/entities\
    -H 'Content-Type: application/json'\
    -H 'fiware-service: sensores'\
    -H 'fiware-servicepath: /' \
    -d '{
        "id":"urn:ngsi-ld:Product:001",
        "type":"Product",
        "name":{
            "type": "Text",
            "value": "Lumber"
        },
        "size":{
            "type": "Text",
            "value": 1
        },
        "quality":{
            "type": "Integer",
            "value": 1
        }
    
    }'