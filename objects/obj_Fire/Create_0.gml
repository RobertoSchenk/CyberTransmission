event_inherited();

skillScript = scr_Fire;


directionSprites = ds_map_create();

directionSprites[? "u"] = spr_FireUp;
directionSprites[? "d"] = spr_FireDown;
directionSprites[? "l"] = spr_FireLeft;
directionSprites[? "r"] = spr_FireRight;

className = "Fire";
classColor = c_red;

scr_UpdateSprite();
