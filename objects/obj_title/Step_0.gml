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
		draw_caret_ = false;
		global.DIFFICULT = selection_ == 1 ? true : false;
		
		with(obj_player_title){
			audio_stop_all();
			sprite_index = spr_mega_man_transforming;
		}
	}
}

//Megaman Animation
if(!audio_is_playing(mus_title) && draw_caret_){
	draw_caret_ = false;
	with(obj_player_title){
		audio_stop_all();
		restart_ = true;
		sprite_index = spr_mega_man_transforming;
	}
}