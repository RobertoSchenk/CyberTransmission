var tileCollided = argument0;
if(tileCollided == 1)
{
	return "walk";	
}

else if(tileCollided == 2)
{
	return "blocked"	
}

else if(tileCollided == 3)
{
	return "box";
}

else if(tileCollided == 4)
{
	return "hole"	
}