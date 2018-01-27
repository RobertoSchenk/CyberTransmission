event_inherited();

skillScript = scr_Punch;
skillPriority = 1;

directionSprites = ds_map_create();

directionSprites[? "u"] = spr_MuscleUp;
directionSprites[? "d"] = spr_MuscleDown;
directionSprites[? "l"] = spr_MuscleLeft;
directionSprites[? "r"] = spr_MuscleRight;

className = "Muscle";
classColor = c_maroon;

scr_UpdateSprite();
