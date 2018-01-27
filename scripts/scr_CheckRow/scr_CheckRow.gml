///@param direction
///@param positionsAfter

var dir = argument0;
var positions = argument1;

var count = 0;

for(var i = 0; i <= positions; i++)
{
	if(dir == "u")
	{
		var TileY = tileY - i;
		if(place_meeting(tileX * global.TileSize, TileY * global.TileSize, obj_Player))
		{

				count++;
		}
	}
	else if(dir == "d")
	{
		TileY = tileY + i;
		if(place_meeting(tileX * global.TileSize, TileY * global.TileSize, obj_Player))
		{
				count++;
		}
	}
	else if(dir == "l")
	{
		var TileX = tileX - i;
		if(place_meeting(TileX * global.TileSize, tileY * global.TileSize, obj_Player))
		{
				count++;
		}
		
	}
	else if(dir == "r")
	{
		TileX = tileX + i;
		if(place_meeting(TileX * global.TileSize, tileY * global.TileSize, obj_Player))
		{
				count++;
		}
	}
	
}

return count;