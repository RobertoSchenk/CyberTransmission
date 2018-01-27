event_inherited();

directionSprites = ds_map_create();

directionSprites[? "u"] = spr_BlinkerUp;
directionSprites[? "d"] = spr_BlinkerDown;
directionSprites[? "l"] = spr_BlinkerLeft;
directionSprites[? "r"] = spr_BlinkerRight;


scr_UpdateSprite();
