if(!selected_){	
	draw_sprite(spr_master_background,0,0,0);
	draw_master_selector(spr_master_portraits);
}else{
	draw_sprite(spr_master_background,0,0,0);
	
	if(interval(interval_speed_,countdown_)){
		draw_master_selector(spr_master_portraits);
	}else{
		draw_sprite(spr_master_background,1,0,0);
		draw_master_selector(spr_master_portraits_negative);
	}
}

if(interval(interval_speed_,interval_timer_)) draw_self();