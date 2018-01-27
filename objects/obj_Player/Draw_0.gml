if(global.CanDraw)
{
	image_blend = classColor;
	draw_self();
	draw_text(x, y - 20, string(className));


	//Debug
	draw_text(x, y, string(playerId));
	draw_text(x, y + 20, string("(" + string(tileX) + "," + string(tileY) + ")"));
}