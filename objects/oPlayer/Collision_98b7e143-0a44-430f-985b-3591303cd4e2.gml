/// @description Insert description here
// You can write your code in this editor

hp--;
if (hp ==0)
{
	sprite_index = sPlayerD;
	image_speed = 0;
	vsp = -7;
	y= y+vsp;
	hascontrol = false;
	audio_pause_all();
	

}	
