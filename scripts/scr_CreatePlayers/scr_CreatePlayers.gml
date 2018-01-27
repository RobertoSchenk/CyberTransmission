///scr_CreatePlayers(Class, mapX, mapY, Id)
///@param Class
///@param maPx
///@param mapY
///@param Id
var class = argument0;
var mapX = argument1;
var mapY = argument2;
var setPlayerId = argument3;

var layerdId = layer_get_id("Instances");
var instance = instance_create_layer(global.TileSize * mapX + global.TileSize/2, global.TileSize * mapY + global.TileSize/2, layerdId, class);
instance.playerId = setPlayerId;
obj_CollisionMap.PlayerGrid[mapX, mapY] = 1;
return instance;