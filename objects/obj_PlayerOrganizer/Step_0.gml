/// @description Insert description here
// You can write your code in this editor



Input_Upkey = ord("W");

Input_DownKey = ord("S");

Input_LeftKey = ord("A");

Input_RightKey = ord("D");

Input_Action = vk_space;
if(keyboard_check_pressed(Input_Upkey))
{
	for(var i = 0; i < ds_list_size(playerArray); i++)
	{
		if(!playerArray[| i].finished)
		{
			with(playerArray[| i])
			{
				scr_calculateDesired("u");
			}
		}
	}
	
	for(var i = 0; i <  ds_list_size(playerArray); i++)
	{
		if(!playerArray[| i].finished)
		{
		with(playerArray[| i])
		{
			scr_Move(playerDir);
			scr_UpdateSprite();
		}
		}
	}
}

else if(keyboard_check_pressed(Input_DownKey))
{
	for(var i = 0; i <  ds_list_size(playerArray); i++)
	{
		if(!playerArray[| i].finished)
		{
		with(playerArray[| i])
		{
			scr_calculateDesired("d");
		}
		}
	}
	
	for(var i = 0; i <  ds_list_size(playerArray); i++)
	{
		if(!playerArray[| i].finished)
		{
		with(playerArray[| i])
		{
			scr_Move(playerDir);
			scr_UpdateSprite();
		}
		}
	}
}

else if(keyboard_check_pressed(Input_LeftKey))
{
	for(var i = 0; i <  ds_list_size(playerArray); i++)
	{
		if(!playerArray[| i].finished)
		{
		with(playerArray[| i])
		{
			scr_calculateDesired("l");
		}
		}
	}
	
	for(var i = 0; i <  ds_list_size(playerArray); i++)
	{
		if(!playerArray[| i].finished)
		{
		with(playerArray[| i])
		{
			scr_Move(playerDir);
			scr_UpdateSprite();
		}
		}
	}
}

else if(keyboard_check_pressed(Input_RightKey))
{
	for(var i = 0; i <  ds_list_size(playerArray); i++)
	{
		if(!playerArray[| i].finished)
		{
		with(playerArray[| i])
		{
			scr_calculateDesired("r");
		}
		}
	}
	
	for(var i = 0; i <  ds_list_size(playerArray); i++)
	{
		with(playerArray[| i])
		{
			scr_Move(playerDir);
			scr_UpdateSprite();
		}
	}
}
else if(keyboard_check_pressed(Input_Action))
{
	for(var i = 0; i <  ds_list_size(playerArray); i++)
	{
		if(!playerArray[| i].finished)
		{
			with(playerArray[| i])
			{
				script_execute(skillScript);
			}
		}
	}
	
}



for( i = ds_list_size(playerArray)-1; i >= 0 ;i--)
{
		if(!playerArray[| i].finished)
		{
			with(playerArray[| i])
			{
		
				scr_CheckSameSpot();	
			}
		}
}

