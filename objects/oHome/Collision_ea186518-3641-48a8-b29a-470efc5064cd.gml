//move to next level

with(oPlayer)
{
	if(hascontrol)
	{
		hascontrol = false;
		audio_stop_sound(theme);
		SlideTransition(TRANS_MODE.GOTO,other.target);
	}
}