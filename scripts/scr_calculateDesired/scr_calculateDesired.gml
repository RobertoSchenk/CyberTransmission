playerDir = argument0

var Border = global.TileSize/2 + playerSpeed * global.DeltaTime;


self.tileX = tilemap_get_cell_x_at_pixel(obj_CollisionMap.mapId, x, y);
self.targetTileX = tileX;

self.tileY = tilemap_get_cell_y_at_pixel(obj_CollisionMap.mapId, x, y);
self.targetTileY = tileY;

if(playerDir == "u")
{
	//var nextTileY = tilemap_get_cell_y_at_pixel(obj_CollisionMap.mapId, x, y - Border);
	var nextTileY = tilemap_get_cell_y_at_pixel(obj_CollisionMap.mapId, x, y- global.TileSize);
	var TileIndex = obj_CollisionMap.CollisionGrid[# self.tileX, nextTileY];
	TileIndex = tile_get_index(tilemap_get(obj_CollisionMap.mapId, tileX, nextTileY));
	if( nextTileY >= 0 && scr_HandleCollision(TileIndex) == "walk")
	{
	//y -= playerSpeed * global.DeltaTime;
	self.targetTileY--;
	}

}
else if(playerDir == "d")
{
	//nextTileY = tilemap_get_cell_y_at_pixel(obj_CollisionMap.mapId, x, y + Border);
	nextTileY = tilemap_get_cell_y_at_pixel(obj_CollisionMap.mapId, x, y + global.TileSize);
	TileIndex = obj_CollisionMap.CollisionGrid[# self.tileX, nextTileY];
	TileIndex = tile_get_index(tilemap_get(obj_CollisionMap.mapId, tileX, nextTileY));
	if(nextTileY < global.ygrid &&  scr_HandleCollision(TileIndex) == "walk")
	{
	//y += playerSpeed * global.DeltaTime;
	self.targetTileY++;
	}
}
else if(playerDir == "l")
{
	//var nextTileX = tilemap_get_cell_x_at_pixel(obj_CollisionMap.mapId, x - Border, y );
	var nextTileX = tilemap_get_cell_x_at_pixel(obj_CollisionMap.mapId, x - global.TileSize, y );
	TileIndex = obj_CollisionMap.CollisionGrid[# nextTileX, self.tileY];
	TileIndex = tile_get_index(tilemap_get(obj_CollisionMap.mapId, nextTileX, tileY));
	if(nextTileX >= 0 &&  scr_HandleCollision(TileIndex) == "walk")
	{
	//x -= playerSpeed * global.DeltaTime;
	self.targetTileX--;
	}

}
else if(playerDir == "r")
{
	//nextTileX = tilemap_get_cell_x_at_pixel(obj_CollisionMap.mapId, x + Border, y );
	nextTileX = tilemap_get_cell_x_at_pixel(obj_CollisionMap.mapId, x + global.TileSize, y );
	
	TileIndex = obj_CollisionMap.CollisionGrid[# nextTileX, self.tileY];
	TileIndex = tile_get_index(tilemap_get(obj_CollisionMap.mapId, nextTileX, tileY));
	if(nextTileX < global.xgrid &&  scr_HandleCollision(TileIndex) == "walk")
	{
	//x += playerSpeed * global.DeltaTime;
	self.targetTileX++;
	}
}

