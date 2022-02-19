curl -X POST \
    http://localhost:1026/v2/entities/urn:ngsi-ld:Product:001/attrs/quantity/value \
    -H 'Content-Type: text/plain' \
    -H 'fiware-path:/' \
    -H 'fiware-service:sensores'\
    -d $1