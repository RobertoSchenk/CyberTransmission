event_inherited();

skillScript = scr_Fire;
skillPriority = 2;

directionSprites = ds_map_create();

directionSprites[? "u"] = spr_FireUp;
directionSprites[? "d"] = spr_FireDown;
directionSprites[? "l"] = spr_FireLeft;
directionSprites[? "r"] = spr_FireRight;

className = "";

scr_UpdateSprite();
