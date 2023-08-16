//Option Handler
if(draw_caret_){
	if(obj_input.up_pressed_){
		handleMenuInput(-1);
	}
	if(obj_input.down_pressed_){
		handleMenuInput(1);
	}
	
	interval_timer_ ++;
	
	if(obj_input.start_pressed_){
		if(selection_ == 0){
			draw_caret_ = false;
			audio_stop_all();
			audio_play_sound(snd_teleporting,1,false);
			fade_transition(TRANS_MODE.goto,rm_stage_select);
		}
	}
}