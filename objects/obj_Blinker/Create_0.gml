event_inherited();

skillScript = scr_Fire;


directionSprites = ds_map_create();

directionSprites[? "u"] = spr_BlinkerUp;
directionSprites[? "d"] = spr_BlinkerDown;
directionSprites[? "l"] = spr_BlinkerLeft;
directionSprites[? "r"] = spr_BlinkerRight;

className = "Blinker";
classColor = c_blue;

scr_UpdateSprite();
