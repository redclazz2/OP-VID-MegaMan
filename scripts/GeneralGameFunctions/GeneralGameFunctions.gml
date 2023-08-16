#region Menu Related
function handleMenuInput(value_add){
	selection_ = wrap(selection_ + value_add,0,1);
	interval_timer_ = 0;
	handleMenuOptionChangeSFX();
}

function drawMenuToScreen(bi_anchor, left_anchor){
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	for(var i = 0; i < array_length(options_); i ++){
		draw_text(left_anchor+32,bi_anchor+16 +(16*i),options_[i]);
	}

	if(interval(interval_speed_,interval_timer_) && draw_caret_){
		draw_sprite(spr_selection_caret,0,left_anchor + 16, bi_anchor+ 16 + (selection_ * 16));
	}
}

function handleMenuOptionChangeSFX(){
	if(audio_sound_get_track_position(sound_) > 200 || !audio_exists(sound_)){
		audio_stop_sound(sound_);
		sound_ = re_audio_play_sound_ext(snd_caret,1,false,noone,2);
	}
}
#endregion