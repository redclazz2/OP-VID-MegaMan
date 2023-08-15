/// @description
draw_self();

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(bbox_left+16, bbox_bottom + 64, "PRESS START");

for(var i = 0; i < array_length(options_); i ++){
	draw_text(bbox_left+32,bbox_bottom+16 +(16*i),options_[i]);
}

if(interval(interval_speed_,interval_timer_) && draw_caret_){
	draw_sprite(spr_selection_caret,0,bbox_left + 16, bbox_bottom + 16 + (selection_ * 16));
}