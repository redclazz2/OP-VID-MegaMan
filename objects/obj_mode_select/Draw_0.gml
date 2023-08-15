/// @description
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_9slice(spr_9slice,left_,top_,width_,height_);

for(var i = 0; i < array_length(options_); i ++){
	draw_text(left_+32,top_+16 +(16*i),options_[i]);
}

if(interval(interval_speed_,interval_timer_) && draw_caret_){
	draw_sprite(spr_selection_caret,0,left_ + 16, top_+ 16 + (selection_ * 16));
}