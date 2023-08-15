/// @description
if(obj_transitions.mode_ != TRANS_MODE.off){exit;}

if(alpha_ >= 1 && wait_timer_ <= -1){
	mode_ = !mode_;
	wait_timer_ = wait_duration_;
}

if(wait_timer_ <= 0){
	if(mode_){
		alpha_ = min(1,alpha_+max(((1 - alpha_)* 0.1),fade_speed_));
	}else{
		alpha_ = max(0,alpha_-max((alpha_ * 0.1),fade_speed_));
	}
}

if(alpha_ <= 0){
	mode_ = !mode_;
	line_ ++;
}

wait_timer_ --;

if(line_ >= array_length(dialogue_)){
	y -= 1.0;
	obj_camera.y -= 1.5;
}

if(!audio_is_playing(song_)){
	instance_create_layer(32,32,"instances",obj_title);
	queue_new_song(mus_title,1,false);
	obj_camera.state_ = CAM_MODE.fixed;
	instance_destroy();
}

if(obj_input.start_pressed_ || skip_){
	instance_create_layer(32,32,"instances",obj_title);
	queue_new_song(mus_title,1,false);
	obj_camera.state_ = CAM_MODE.fixed;
	instance_destroy();	
}