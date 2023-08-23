obj_camera.state_ = CAM_MODE.fixed;
image_speed	= 0.5;

music_ = queue_new_song(mus_master_choosen,1,false);

y_target_ = 120;
y_speed_ = 8;

print_name_ = false;
name_timer_ = 0;
star_alpha_ = 0;
name_ = "";
room_goto_ = noone;
animation_handler_ = noone;
idle_master_sprite_ = noone;

switch(global.MASTER_SELECTED){
	case 0:
	
	break;
	
	case 5:
		name_ = "WOODMAN";
		chest_pounds_ = 0;
		idle_master_sprite_ = spr_wood_man_idle;
		room_goto_ = rm_wood_man_stage;
		sprite_index = spr_wood_man_crouching;
		
		animation_handler_ =  function() {
			if(chest_pounds_ < 3){
				sprite_index =  spr_wood_man_chest_pound;
				if(animation_end()) chest_pounds_ ++;
			}else{
				sprite_index = spr_wood_man_idle;
			}
		}
	break;
}

function set_star_alpha(alpha_){
	layer_background_alpha(layer_background_get_id("Large_Stars"),alpha_);
	layer_background_alpha(layer_background_get_id("Medium_Stars"),alpha_);
	layer_background_alpha(layer_background_get_id("Small_Stars"),alpha_);
}

set_star_alpha(0);