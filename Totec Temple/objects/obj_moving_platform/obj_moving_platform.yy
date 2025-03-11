{
  "$GMObject":"",
  "%Name":"obj_moving_platform",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":{"name":"obj_marker","path":"objects/obj_marker/obj_marker.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_moving_platform",
  "overriddenProperties":[],
  "parent":{
    "name":"Objects",
    "path":"folders/Objects.yy",
  },
  "parentObjectId":{
    "name":"obj_ground",
    "path":"objects/obj_ground/obj_ground.yy",
  },
  "persistent":false,
  "physicsAngularDamping":0.1,
  "physicsDensity":0.5,
  "physicsFriction":0.2,
  "physicsGroup":1,
  "physicsKinematic":false,
  "physicsLinearDamping":0.1,
  "physicsObject":false,
  "physicsRestitution":0.1,
  "physicsSensor":false,
  "physicsShape":1,
  "physicsShapePoints":[],
  "physicsStartAwake":true,
  "properties":[
    {"$GMObjectProperty":"v1","%Name":"movement_speed_horizontal","filters":[],"listItems":[],"multiselect":false,"name":"movement_speed_horizontal","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"2","varType":1,},
    {"$GMObjectProperty":"v1","%Name":"movement_speed_vertical","filters":[],"listItems":[],"multiselect":false,"name":"movement_speed_vertical","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":1,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"spr_floor",
    "path":"sprites/spr_floor/spr_floor.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}