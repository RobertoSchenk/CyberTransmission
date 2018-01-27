var Tile;

var posX = x;
var posY = y;

if(playerDir == "u")
{
	Tile = tilemap_get_at_pixel(obj_CollisionMap.mapId, x, y - global.TileSize);
	if(tile_get_index(Tile) == 3)
	posY= y - global.TileSize;
}

else if (playerDir == "d")
{
	Tile = tilemap_get_at_pixel(obj_CollisionMap.mapId, x, y + global.TileSize)
	if(tile_get_index(Tile) == 3)
	posY = y + global.TileSize;

}

else if (playerDir == "l")
{
	Tile = tilemap_get_at_pixel(obj_CollisionMap.mapId, x- global.TileSize, y )
	if(tile_get_index(Tile) == 3)
	posX= x - global.TileSize;

}

else if(playerDir == "r")
{
	Tile = tilemap_get_at_pixel(obj_CollisionMap.mapId, x + global.TileSize, y)	
	if(tile_get_index(Tile) == 3)
	posX= x + global.TileSize;

}


if(tile_get_index(Tile) == 3)
{
		scr_BoxMove(posX, posY);
}

