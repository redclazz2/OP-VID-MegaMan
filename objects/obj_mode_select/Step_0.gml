//Option Handler
if(draw_caret_){
	if(obj_input.up_pressed_){
		selection_ = wrap(--selection_,0,1);
		interval_timer_ = 0;
		if(audio_sound_get_track_position(sound_) > 200 || !audio_exists(sound_)){
			audio_stop_sound(sound_);
			sound_ = re_audio_play_sound_ext(snd_caret,1,false,noone,2);
		}
	}
	if(obj_input.down_pressed_){
		selection_ = wrap(++selection_,0,1);
		interval_timer_ = 0;
		if(audio_sound_get_track_position(sound_) > 200 || !audio_exists(sound_)){
			audio_stop_sound(sound_);
			sound_ = re_audio_play_sound_ext(snd_caret,1,false,noone,2);
		}
	}
	
	interval_timer_ ++;
	
	if(obj_input.start_pressed_){

	}
}