{
    "id": "85c9ff2e-70ba-49d3-87a5-c2fd013986db",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "oPacMan",
    "eventList": [
        {
            "id": "dd1ddaa3-53d0-43cd-b51c-ee6c202cc688",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "85c9ff2e-70ba-49d3-87a5-c2fd013986db"
        },
        {
            "id": "ab4a55eb-1393-4547-ba74-429c30bd31ac",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "85c9ff2e-70ba-49d3-87a5-c2fd013986db"
        },
        {
            "id": "d170bd6d-c9be-4d50-ad7a-0f0c08c54b50",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 8,
            "m_owner": "85c9ff2e-70ba-49d3-87a5-c2fd013986db"
        },
        {
            "id": "ee115cf0-8c45-4820-9e85-bc0d8caed233",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 2,
            "m_owner": "85c9ff2e-70ba-49d3-87a5-c2fd013986db"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "00000000-0000-0000-0000-000000000000",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "80279fbc-ba8b-4bd9-a9d6-aee1d8498d0d",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "GridX",
            "varType": 0
        },
        {
            "id": "d9f693a3-835a-4334-8287-2ee675e1b441",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "GridY",
            "varType": 0
        },
        {
            "id": "cd43e378-b15b-4f4a-93e4-acc6966f134b",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "True",
            "varName": "IsMoveLeft",
            "varType": 3
        },
        {
            "id": "408eb336-6834-4d3d-aef3-3a8530ced0c3",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "IsMoveRight",
            "varType": 3
        },
        {
            "id": "0b096c1a-3b91-4cdf-9de4-93b13b10456b",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "False",
            "varName": "IsMoveUp",
            "varType": 3
        },
        {
            "id": "863b7c85-bd9f-4738-b571-7a1a087edbe0",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "IsMoveDown",
            "varType": 3
        },
        {
            "id": "8e16070d-3aed-4050-bf59-efc3e1be0602",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "True",
            "varName": "Horizontal",
            "varType": 3
        },
        {
            "id": "fa51846c-1d37-4e70-97ec-ddcbcc8af137",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "False",
            "varName": "Vertical",
            "varType": 3
        },
        {
            "id": "5ab3162a-9c73-4a0c-a766-9e4526132503",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "IsTurning",
            "varType": 3
        },
        {
            "id": "ca052ffc-56d7-45be-b75e-38a37be063c8",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "12",
            "varName": "TurnRightUpSpaces",
            "varType": 0
        },
        {
            "id": "bbcb07a6-c9ac-4708-b834-6ef1ed057f6b",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "16",
            "varName": "TurnLeftDownSpaces",
            "varType": 0
        },
        {
            "id": "3be31769-076e-4fb3-92a8-f66936d8c7fa",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "oGameManager.PacNormalDotSpeed",
            "varName": "CurrentSpeed",
            "varType": 0
        },
        {
            "id": "3ef650e2-461b-4a51-8180-1495072205cc",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "GridX",
            "varName": "LastGridX",
            "varType": 0
        },
        {
            "id": "525ee8cd-5f00-4dc2-b1ac-d89a5ed96498",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "GridY",
            "varName": "LastGridY",
            "varType": 0
        }
    ],
    "solid": false,
    "spriteId": "ccbc5927-3c0b-4016-864e-66665e1ed1d2",
    "visible": true
}