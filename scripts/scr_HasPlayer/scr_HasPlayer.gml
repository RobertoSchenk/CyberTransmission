var gridX = argument0;
var gridY = argument1;
var dir = argument2;

var needCheck = false;


var free = true;

var playerArray = obj_PlayerOrganizer.playerArray;

	for(var i = 0; i <  ds_list_size(playerArray); i++)
	{
		if(i != self.playerId)
		{
			if(playerArray[| i].targetTileX == gridX && playerArray[| i].targetTileY == gridY)
			{
				free = false;
				break;
			}
		}
	}

return !free