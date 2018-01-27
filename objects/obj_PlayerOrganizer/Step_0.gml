/// @description Insert description here
// You can write your code in this editor



Input_Upkey = ord("W");

Input_DownKey = ord("S");

Input_LeftKey = ord("A");

Input_RightKey = ord("D");

if(keyboard_check_pressed(Input_Upkey))
{
	for(var i = 0; i < array_length_1d(playerArray); i++)
	{
		with(playerArray[i])
		{
			scr_calculateDesired("u");
		}
	}
	
	for(var i = 0; i < array_length_1d(playerArray); i++)
	{
		with(playerArray[i])
		{
			scr_Move(playerDir);
			scr_UpdateSprite();
		}
	}
}

else if(keyboard_check_pressed(Input_DownKey))
{
	for(var i = 0; i < array_length_1d(playerArray); i++)
	{
		with(playerArray[i])
		{
			scr_calculateDesired("d");
		}
	}
	
	for(var i = 0; i < array_length_1d(playerArray); i++)
	{
		with(playerArray[i])
		{
			scr_Move(playerDir);
			scr_UpdateSprite();
		}
	}
}

else if(keyboard_check_pressed(Input_LeftKey))
{
	for(var i = 0; i < array_length_1d(playerArray); i++)
	{
		with(playerArray[i])
		{
			scr_calculateDesired("l");
		}
	}
	
	for(var i = 0; i < array_length_1d(playerArray); i++)
	{
		with(playerArray[i])
		{
			scr_Move(playerDir);
			scr_UpdateSprite();
		}
	}
}

else if(keyboard_check_pressed(Input_RightKey))
{
	for(var i = 0; i < array_length_1d(playerArray); i++)
	{
		with(playerArray[i])
		{
			scr_calculateDesired("r");
		}
	}
	
	for(var i = 0; i < array_length_1d(playerArray); i++)
	{
		with(playerArray[i])
		{
			scr_Move(playerDir);
			scr_UpdateSprite();
		}
	}
}



