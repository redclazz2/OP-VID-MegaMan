y = approach(y,y_target_,y_speed_);

if(y == y_target_){
	if(audio_sound_get_track_position(music_) > 3.2){
		print_name_ = true;
	}else if(audio_sound_get_track_position(music_) > 1.8){
		animation_handler_();
	}else{
		sprite_index = idle_master_sprite_;
		star_alpha_ += 0.1;
		set_star_alpha(star_alpha_);
	}
}

if(!audio_is_playing(music_)){
	fade_transition(TRANS_MODE.goto, room_goto_);
}