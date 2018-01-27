global.TileSize = 64;

global.xgrid = room_width/global.TileSize;
global.ygrid = room_height/global.TileSize;

CollisionGrid = ds_grid_create(global.xgrid, global.ygrid);

layerId = layer_get_id("Collision");
mapId = layer_tilemap_get_id(layerId);



for(i = 0; i < global.xgrid; i++)
{
	for(j = 0; j < global.ygrid; j++)
	{
		var Tile = tilemap_get(mapId, i, j);
		var value = tile_get_index(Tile);
		if(value != -1)
		{
			ds_grid_add(CollisionGrid, i, j, value);
			PlayerGrid[i, j] = 0;
		}
	}
}

