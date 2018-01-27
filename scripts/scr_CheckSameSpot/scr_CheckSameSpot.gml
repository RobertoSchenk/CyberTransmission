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
	room_restart();
		
}

else if(tile_get_index(Tile == 5))
{
	var index = ds_list_find_index(obj_PlayerOrganizer.playerArray, self); 	
	ds_list_delete(obj_PlayerOrganizer.playerArray, index);
	
	Destroy = true;
}

if( ds_list_size(obj_PlayerOrganizer.playerArray) <= 0)
{
	if(room_next(room) != -1)
	{
		room_goto(room_next(room));	
	}
	else
	{
		show_message("u win");	
	}
	
}
if(Destroy)
{
	instance_destroy();
}



