now_playing_ = noone;
previous_track_ = noone;

alarm[0] = 1;

if(file_exists("setting.ini")){
}else{
	mus_vol_ = global.MUS_VOLUME;
	sfx_vol_ = global.SFX_VOLUME;
	
	audio_group_set_gain(MUS,mus_vol_,0);
	audio_group_set_gain(SFX,sfx_vol_,0);
}