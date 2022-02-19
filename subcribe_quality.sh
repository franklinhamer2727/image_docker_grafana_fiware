curl  -X POST \
    http://localhost:1026/v2/subscriptions/ \
    -H 'Content-Type: application/json'\
    -H 'fiware-service: sensores'\
    -H  'fiware-servicepath: /'\
    -d '{
        "descripction":"Notify QuantumLeap of count changes of any Sensor",
        "subject":{
            "entities":[
                {
                "idPattern": ".*"
                }
            ],
            "condition":{
                "attrs":[
                    "quantity"
                ]
            }
        },
        "notification":{
            "http":{
                "url":"http://quntumleap:8668/v2/notify"

            },
            "attrs":[
                "quantity"
            ],
            "metadata":["dateCreated","dateModified"]
        },
        "throttling":1
    }'
