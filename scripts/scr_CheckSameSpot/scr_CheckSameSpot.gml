var instance = (instance_place(x, y, obj_Player))

if(instance != noone)
{
	x = beforePosX;
	y = beforePosY;
	
}

var CellX = tilemap_get_cell_x_at_pixel(obj_CollisionMap.mapId, x, y);
var CellY = tilemap_get_cell_y_at_pixel(obj_CollisionMap.mapId, x, y);

var Tile = tilemap_get(obj_CollisionMap.mapId, CellX, CellY);

var Destroy = false;

if(tile_get_index(Tile == 4))
{
	alive = false;
		
}



else if(tile_get_index(Tile == 5))
{
	//ds_list_delete(obj_PlayerOrganizer.playerArray, playerId);
	self.visible= false;
	finished = true;
	targetTileX = -1;
	targetTileY = -1;
	tileX = -1;
	tileY = -1;
	
	x= 10000;
	y = 10000;
	
}


	



