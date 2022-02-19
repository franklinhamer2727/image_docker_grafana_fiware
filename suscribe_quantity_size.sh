curl -X POST \
    http://localhost:1026/v2/subscriptions/ \
    -H 'Content-Type: application/json' \
    -H 'fiware-service: sensores' \
    -H 'fiware-servicepath: /' \
    -d '{
        "description": "Notify quantumLeap of count changes of any Sensor",
        "subject":{
            "entities":[
                {
                    "idPattern": ".*"
                }
            ],
            "condition":{
                "attrs":[
                    "quantity", "size"
                ]
            }
        },
        "notification":{
            "http":{
                "url":"http://quantumleap:8668/v2/notify"

            },
            "attrs":[
                "auqntity"
            ],
            "metadata":["dateCreated","dateModified"]
        }
    }'