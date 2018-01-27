var posX = argument0;
var posY = argument1;

var cellX, cellY;
var Tile;

cellX = posX;
cellY = posY;
Tile = tilemap_get(obj_CollisionMap.mapId, cellX, cellY);

Tile = tile_set_index(Tile, 1);
tilemap_set(obj_CollisionMap.mapId, Tile, cellX, cellY);

show_debug_message("should destroy crate at: " + string(posX) + "," + string(posY)); 