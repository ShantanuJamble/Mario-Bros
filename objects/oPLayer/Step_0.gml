// Read inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check(vk_space);

//var keyword will define that move variable is onlt for that freame
var move = key_right - key_left
vsp = vsp + grv;
hsp = walksp * move;


if (key_jump && place_meeting(x,y+1,oTile))
{
	vsp = -7;

}


//Horrizontal Collision
if(place_meeting(x+hsp,y,oTile))
{
	while(!place_meeting(x+sign(hsp),y,oTile))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp

//Vertical Collision


if(place_meeting(x,y+vsp,oTile))
{
	while(!place_meeting(x,y+sign(vsp),oTile))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp

//Animation


if (!place_meeting(x,y+1,oTile))
{
	sprite_index = sPlayerJ;
	image_speed = 0;
}

else
{
	image_speed = 1;
	if(hsp == 0)
		sprite_index = sPlayer;
	else
		sprite_index = sPlayerR;
}
//chaning direction of movement 
if (hsp != 0) image_xscale = sign(hsp);