if(!selected_){
	if(obj_input.up_pressed_){
		y-= 64;
		interval_timer_ = 0;
		handleMenuOptionChangeSFX();
	}
	if(obj_input.down_pressed_){
		y+= 64;
		interval_timer_ = 0;
		handleMenuOptionChangeSFX();
	}
	if(obj_input.left_pressed_){
		x-= 64;
		interval_timer_ = 0;
		handleMenuOptionChangeSFX();
	}
	if(obj_input.right_pressed_){
		x+= 64;
		interval_timer_ = 0;
		handleMenuOptionChangeSFX();
	}
	
	x = clamp(x,43,171);
	y = clamp(y,27,155);
	
	var _x = x div 64;
	var _y = y div 64;
	
	selection_ = _y * 3 + _x;
	
	if(obj_input.start_pressed_){
		if(selection_ != 4){
			selected_ = true;
			audio_stop_all();
			audio_play_sound(snd_teleporting,1,false);
		}
	}
}

if(selected_){
	countdown_ --;
	if(!audio_is_playing(snd_teleporting)){
		global.MASTER_SELECTED = selection_;
		audio_stop_all();
		room_goto(rm_master_display);
	}
}