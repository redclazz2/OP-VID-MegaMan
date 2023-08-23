obj_camera.state_ = CAM_MODE.fixed;
x = 107;
y = 91;
interval_timer_ = 0;
interval_speed_ = 8;

selection_ = 4;
selected_ = false;
countdown_ = SEC * 2;
sound_ = noone;
song_ = queue_new_song(mus_stage_select,1,1,SEC);

function draw_master_selector(portrait){
	for(var i = 0; i < sprite_get_number(portrait); i++){
		var _x = i % 3,
			_y = i div 3;
		
		if(global.MASTERS_DEFEATED[|i] ){
			draw_sprite(portrait,0,48 + (_x*64),
				32 +(_y *64));
		}else{
			draw_sprite(portrait,i,48+(_x*64),
				32+(_y *64));
		}
	}
}