event_inherited();

directionSprites = ds_map_create();

directionSprites[? "u"] = spr_FireUp;
directionSprites[? "d"] = spr_FireDown;
directionSprites[? "l"] = spr_FireLeft;
directionSprites[? "r"] = spr_FireRight;


scr_UpdateSprite();
