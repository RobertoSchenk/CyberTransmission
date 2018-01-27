var dir = playerDir;

var dirModX = 1;
var dirModY = 1;

var targetPositionsX, targetPositionsY;

var dirSignal;
var axis;

var canJump = true;

if(dir == "u")
{
	dirModY = -global.TileSize;
	axis = "v";
	dirSignal = -1;
}

else if(dir == "d")
{
	dirModY = global.TileSize;
	axis = "v";
	dirSignal = 1;
}

else if(dir == "l")
{
	dirModX = -global.TileSize;
	axis = "h";
	dirSignal = -1;

}

else if(dir == "r")
{
	dirModX = global.TileSize;
	axis = "h";
	dirSignal = 1;

}

targetPositionsX[0] = x + dirModX;
targetPositionsX[1] = x + dirModX*2;

targetPositionsY[0] =  y + dirModY;
targetPositionsY[1] = y + dirModY * 2;

var X1 = tilemap_get_cell_x_at_pixel(obj_CollisionMap.mapId, x + dirModX, y);
var X2 = tilemap_get_cell_x_at_pixel(obj_CollisionMap.mapId, x + dirModX*2, y);
var Y1 =tilemap_get_cell_y_at_pixel(obj_CollisionMap.mapId, x, y + dirModY);
var Y2 =tilemap_get_cell_y_at_pixel(obj_CollisionMap.mapId, x, y + dirModY * 2);

var Cell1 = tilemap_get(obj_CollisionMap.mapId, X1, Y1);
var Cell2 = tilemap_get(obj_CollisionMap.mapId, X2, Y2);
var Index1 = tile_get_index(Cell1);
var Index2 = tile_get_index(Cell2);

if(Index1 == 2 || Index2 == 2 || Index2 == 3)
{
	canJump = false;	
}

for(var i =0; i < 2; i++)
{
var instance = instance_place(targetPositionsX[i], targetPositionsY[i], obj_Player);

if(instance != noone)
{
	canJump = false;	
}

}
if(axis == "h")
{
	if(X1 <0 || X1 >= global.xgrid)
	{
		canJump = false;	
	}
	if(X2 < 0 || X2 >= global.xgrid)
	{
		canJump = false;	
	}
}

if(axis == "v")
{
	if(Y1 <0 || Y1 >= global.xgrid)
	{
		canJump = false;	
	}
	if(Y2 < 0 || Y2 >= global.xgrid)
	{
		canJump = false;	
	}
}


if(canJump)
{
	show_debug_message(string(dirModX) + "::" + string(dirModY));
	if(axis == "h")
	{
		x += global.TileSize * 2 * dirSignal;	
	}
	if(axis == "v")
	{
		y += global.TileSize * 2 * dirSignal;	
	}
}

