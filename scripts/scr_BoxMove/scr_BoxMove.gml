var moveDirection = playerDir;

var _x = argument0;
var _y = argument1;

var posX = _x;
var posY = _y;

var completed = false;

var startTile = scr_getTileAt(_x, _y);

do
{
	var Tile;
	var TileIndex;
	if(moveDirection == "u")
	{
		Tile = scr_getTileAt( posX, posY - global.TileSize);
		TileIndex = tile_get_index(Tile);
		if((TileIndex != 2 || TileIndex != 3) && posY >= 0)
		{
			show_debug_message("movingUp to " + string(tilemap_get_cell_y_at_pixel(obj_CollisionMap.mapId, posX, posY)));
			posY -= global.TileSize;
		}
			else
		{
			completed = true;
		}
	}
	else if(moveDirection == "d")
	{
		Tile = scr_getTileAt( posX, posY + global.TileSize);
					show_debug_message("movingDown to " + string(posY));

		TileIndex = tile_get_index(Tile);
		if((TileIndex != 2 || TileIndex != 3) && posY < global.ygrid)
		{
			posY += global.TileSize;
		}
		else
		{
			completed = true;
		}
	}
	else if(moveDirection == "l")
	{
		Tile = scr_getTileAt( posX  - global.TileSize, posY);
		TileIndex = tile_get_index(Tile);
		if((TileIndex != 2 || TileIndex != 3) && posX >= 0)
		{
			posX -= global.TileSize;
		}
		else
		{
			completed = true;
		}
	}
	else if(moveDirection == "r")
	{
		Tile = scr_getTileAt( posX + global.TileSize, posY);
		TileIndex = tile_get_index(Tile);
		if((TileIndex != 2 || TileIndex != 3) && posX < global.xgrid)
		{
			posX += global.TileSize;
		}
		else
		{
			completed = true;	
		}
	}
	
	Tile = scr_getTileAt(posX, posY);
	if(tile_get_index(Tile) == 4)
	{
		startTile = tile_set_index(startTile, 1);
		Tile = tile_set_index(Tile, 3);
		completed = true;
	}
	

} until(completed)

if(posX != _x || posY != _y)
{
	show_debug_message("changingTiles to" +string(posX)+"," + string(posY) + string("from (" + _x + "," + _y));
	Tile = scr_getTileAt( posX, posY);
	startTile = tile_set_index(startTile, 2);
	tilemap_set(obj_CollisionMap.mapId,startTile, tilemap_get_cell_x_at_pixel(obj_CollisionMap.mapId, _x, _y), tilemap_get_cell_y_at_pixel(obj_CollisionMap.mapId, _x, _y));
	
	Tile = tile_set_index(Tile, 3);
	tilemap_set(obj_CollisionMap.mapId, Tile,0, 0);
	
}