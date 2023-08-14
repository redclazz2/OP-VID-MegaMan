if(audio_is_playing(previous_track_) && (audio_sound_get_gain(previous_track_) <= 0.001)){
	audio_stop_sound(previous_track_);
}