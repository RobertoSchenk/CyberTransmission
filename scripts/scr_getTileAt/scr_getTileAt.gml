var posX = argument0;
var posY = argument1;

var CellX = tilemap_get_cell_x_at_pixel(obj_CollisionMap.mapId, posX, posY);
var CellY = tilemap_get_cell_y_at_pixel(obj_CollisionMap.mapId, posX, posY);

return tilemap_get(obj_CollisionMap.mapId, CellX, CellY);