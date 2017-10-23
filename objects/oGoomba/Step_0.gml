vsp = vsp + grv;



//Horrizontal Collision
if(place_meeting(x+hsp,y,oTile))
{
	while(!place_meeting(x+sign(hsp),y,oTile))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
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
	sprite_index = sGoombaW;
	image_speed = 0;
}

else
{
	image_speed = 1;
	if(hsp == 0)
		sprite_index = sGoombaW;
	else
		sprite_index = sGoombaW;
}
//chaning direction of movement 
if (hsp != 0) image_xscale = sign(hsp);