with (other)
{
	hp--;
	sprite_index=sGoombaWFlash;//Shows the impact of enemy and billet
	if(hp == 0){
		sprite_index = sGoombaD;
		instance_destroy();
	}
}

instance_destroy();