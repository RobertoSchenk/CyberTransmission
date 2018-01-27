var CheckTiles, hitPosX, hitPosY;

if(playerDir == "u")
{
	CheckTiles[0] = tilemap_get(obj_CollisionMap.mapId, tileX - 1, tileY -1);
	CheckTiles[1] = tilemap_get(obj_CollisionMap.mapId, tileX, tileY -1);
	CheckTiles[2] = tilemap_get(obj_CollisionMap.mapId, tileX + 1, tileY -1);
	
	hitPosX[0] =  tileX - 1;
	hitPosX[1] = tileX;
	hitPosX[2] = tileX + 1;
	
	hitPosY[0] = tileY -1
	hitPosY[1] = tileY -1
	hitPosY[2] = tileY -1;
}

else if(playerDir == "d")
{
	CheckTiles[0] = tilemap_get(obj_CollisionMap.mapId, tileX - 1, tileY +1);
	CheckTiles[1] = tilemap_get(obj_CollisionMap.mapId, tileX, tileY +1);
	CheckTiles[2] = tilemap_get(obj_CollisionMap.mapId, tileX + 1, tileY +1);
	
	hitPosX[0] =  tileX - 1;
	hitPosX[1] = tileX;
	hitPosX[2] = tileX + 1;
	
	hitPosY[0] = tileY +1
	hitPosY[1] = tileY + 1;
	hitPosY[2] = tileY +1;
}

else if(playerDir == "l")
{
	CheckTiles[0] = tilemap_get(obj_CollisionMap.mapId, tileX - 1, tileY -1);
	CheckTiles[1] = tilemap_get(obj_CollisionMap.mapId, tileX -1, tileY);
	CheckTiles[2] = tilemap_get(obj_CollisionMap.mapId, tileX - 1, tileY +1);
	
	hitPosX[0] =  tileX - 1;
	hitPosX[1] = tileX - 1;
	hitPosX[2] = tileX - 1;
	
	hitPosY[0] = tileY -1;
	hitPosY[1] = tileY;
	hitPosY[2] = tileY +1;
}

else if(playerDir == "r")
{
	CheckTiles[0] = tilemap_get(obj_CollisionMap.mapId, tileX + 1, tileY -1);
	CheckTiles[1] = tilemap_get(obj_CollisionMap.mapId, tileX +1, tileY);
	CheckTiles[2] = tilemap_get(obj_CollisionMap.mapId, tileX + 1, tileY +1);
	
	hitPosX[0] =  tileX + 1;
	hitPosX[1] = tileX + 1;
	hitPosX[2] = tileX + 1;
	
	hitPosY[0] = tileY -1;
	hitPosY[1] = tileY;
	hitPosY[2] = tileY +1;
	
}

for(var i =0; i < 3; i++)
{
	if(tile_get_index(CheckTiles[i]) == 3)
	{
		scr_DestroyBox(hitPosX[i], hitPosY[i]);
	}
	
		for(var j = 0; j < 3; j++)
		{
			if(hitPosX[i] == obj_PlayerOrganizer.playerArray[| j].tileX && hitPosY[i] == obj_PlayerOrganizer.playerArray[| j].tileY)
			{
				obj_PlayerOrganizer.playerArray[| j].alive = false;	
	
			}

	}
	
	
}

