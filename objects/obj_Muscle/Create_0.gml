event_inherited();

directionSprites = ds_map_create();

directionSprites[? "u"] = spr_MuscleUp;
directionSprites[? "d"] = spr_MuscleDown;
directionSprites[? "l"] = spr_MuscleLeft;
directionSprites[? "r"] = spr_MuscleRight;


scr_UpdateSprite();
