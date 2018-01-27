playerDir = argument0

var Border = global.TileSize/2 + playerSpeed * global.DeltaTime;


self.tileX = tilemap_get_cell_x_at_pixel(obj_CollisionMap.mapId, x, y);
if(self.tileX >= global.xgrid) self.tileX = global.xgrid-1;
if(self.tileX < 0)self.tileX = 0;
self.tileY = tilemap_get_cell_y_at_pixel(obj_CollisionMap.mapId, x, y);

if(playerDir == "u")
{
	//var nextTileY = tilemap_get_cell_y_at_pixel(obj_CollisionMap.mapId, x, y - Border);
	var nextTileY = tilemap_get_cell_y_at_pixel(obj_CollisionMap.mapId, x, y- global.TileSize);
	var TileIndex = obj_CollisionMap.CollisionGrid[# self.tileX, nextTileY];
	if( nextTileY >= 0 && scr_HandleCollision(TileIndex) == "walk" && !scr_HasPlayer(self.tileX, nextTileY, playerDir))
	{
	//y -= playerSpeed * global.DeltaTime;
	y -= global.TileSize;	
	self.tileY--;
	}

}
else if(playerDir == "d")
{
	//nextTileY = tilemap_get_cell_y_at_pixel(obj_CollisionMap.mapId, x, y + Border);
	nextTileY = tilemap_get_cell_y_at_pixel(obj_CollisionMap.mapId, x, y + global.TileSize);
	TileIndex = obj_CollisionMap.CollisionGrid[# self.tileX, nextTileY];
	if(nextTileY < global.ygrid &&  scr_HandleCollision(TileIndex) == "walk" && !scr_HasPlayer(self.tileX, nextTileY,playerDir))
	{
	//y += playerSpeed * global.DeltaTime;
	y += global.TileSize;
	self.tileY++;
	}
}
else if(playerDir == "l")
{
	//var nextTileX = tilemap_get_cell_x_at_pixel(obj_CollisionMap.mapId, x - Border, y );
	var nextTileX = tilemap_get_cell_x_at_pixel(obj_CollisionMap.mapId, x - global.TileSize, y );
	TileIndex = obj_CollisionMap.CollisionGrid[# nextTileX, self.tileY];
	if(nextTileX >= 0 &&  scr_HandleCollision(TileIndex) == "walk" && !scr_HasPlayer(nextTileX, self.tileY,playerDir))
	{
	//x -= playerSpeed * global.DeltaTime;
	x -= global.TileSize;
	self.tileX--;
	}

}
else if(playerDir == "r")
{
	//nextTileX = tilemap_get_cell_x_at_pixel(obj_CollisionMap.mapId, x + Border, y );
	nextTileX = tilemap_get_cell_x_at_pixel(obj_CollisionMap.mapId, x + global.TileSize, y );
	
	TileIndex = obj_CollisionMap.CollisionGrid[# nextTileX, self.tileY];
	if(nextTileX < global.xgrid &&  scr_HandleCollision(TileIndex) == "walk" && !scr_HasPlayer(nextTileX, self.tileY,playerDir))
	{
	//x += playerSpeed * global.DeltaTime;
	x += global.TileSize;
	self.tileX++;
	}
}

