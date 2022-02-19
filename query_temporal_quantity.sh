curl -X GET \
    'http://localhost:8668/v2/entities/urn:ngsi-ld_Product:001/attrs/quantity?lastN =1000' \
    -H 'Accept:application/json'\
    -H 'Fiware-Service: sensores' \
    -H 'Fiware-ServicePath:/' \