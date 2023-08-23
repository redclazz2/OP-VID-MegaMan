if(!selected_){
	draw_sprite(spr_master_background,0,0,0);
	for(var i = 0; i < sprite_get_number(spr_master_portraits); i++){
		var _x = i % 3,
			_y = i div 3;
		
		if(global.MASTERS_DEFEATED[|i]){
			draw_sprite(spr_blank_master_portrait,0,48 + (_x*64),
				32 +(_y *64));
		}else{
			draw_sprite(spr_blank_master_portrait,i,48+(_x*64),
				32+(_y *64));
		}
	}
	
	if(interval(interval_speed_,interval_timer_)) draw_self();
}else{

}