{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_player",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":2,"eventType":3,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"eventNum":0,"eventType":4,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":{"name":"obj_item","path":"objects/obj_item/obj_item.yy",},"eventNum":0,"eventType":4,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":1,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_entity","path":"objects/obj_entity/obj_entity.yy",},"propertyId":{"name":"max_hspd","path":"objects/obj_entity/obj_entity.yy",},"value":"2",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_entity","path":"objects/obj_entity/obj_entity.yy",},"propertyId":{"name":"max_vspd","path":"objects/obj_entity/obj_entity.yy",},"value":"10",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_entity","path":"objects/obj_entity/obj_entity.yy",},"propertyId":{"name":"jump_spd","path":"objects/obj_entity/obj_entity.yy",},"value":"7",},
  ],
  "parent": {
    "name": "Objects",
    "path": "folders/Objects.yy",
  },
  "parentObjectId": {
    "name": "obj_entity",
    "path": "objects/obj_entity/obj_entity.yy",
  },
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"coyote_time_default","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"10","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"coyote_time","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"jump_buffer_default","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"10","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"jump_buffer","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":0,},
  ],
  "solid": false,
  "spriteId": {
    "name": "spr_player_idle",
    "path": "sprites/spr_player_idle/spr_player_idle.yy",
  },
  "spriteMaskId": {
    "name": "spr_player_mask",
    "path": "sprites/spr_player_mask/spr_player_mask.yy",
  },
  "visible": true,
}