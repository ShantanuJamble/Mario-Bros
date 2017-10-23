/// @description Insert description here
// You can write your code in this editor


if(hp <=0 || y > room_height)
{
	with(oCamera)
	{
		draw_set_color(c_red);
		draw_text(x/2,y/2,"Game Over!!");
	}
}