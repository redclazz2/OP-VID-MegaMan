enum INPUT_STATES{
	none,
	standard
}

state_ = INPUT_STATES.standard;

gp_id_ = noone;

#region INPUTS
	key_right_ = ord("D");
	key_up_ = ord("W");
	key_left_ = ord("A");
	key_down_ = ord("S");
	
	key_a_ = ord("K");
	key_b_ = ord("J");
	key_x_ = ord("I");
	key_y_ = ord("U");
	key_l_ = ord("Y");
	key_r_ = ord("O");
	
	key_start_ = vk_enter;
	key_select_ = vk_rshift;
	
	right_pressed_ = keyboard_check_pressed(key_right_);
	up_pressed_ = keyboard_check_pressed(key_up_);
	left_pressed_ = keyboard_check_pressed(key_left_);
	down_pressed_ = keyboard_check_pressed(key_down_);
	a_pressed_ = keyboard_check_pressed(key_a_);
	b_pressed_ = keyboard_check_pressed(key_b_);
	x_pressed_ = keyboard_check_pressed(key_x_);
	y_pressed_ = keyboard_check_pressed(key_y_);
	l_pressed_ = keyboard_check_pressed(key_l_);
	r_pressed_ = keyboard_check_pressed(key_r_);
	start_pressed_ = keyboard_check_pressed(key_start_);
	select_pressed_ = keyboard_check_pressed(key_select_);
	
	right_held_ = keyboard_check(key_right_);
	up_held_ = keyboard_check(key_up_);
	left_held_ = keyboard_check(key_left_);
	down_held_ = keyboard_check(key_down_);
	a_held_ = keyboard_check(key_a_);
	b_held_ = keyboard_check(key_b_);
	x_held_ = keyboard_check(key_x_);
	y_held_ = keyboard_check(key_y_);
	l_held_ = keyboard_check(key_l_);
	r_held_ = keyboard_check(key_r_);
	start_held_ = keyboard_check(key_start_);
	select_held_ = keyboard_check(key_select_);
	
	right_released_ = keyboard_check_released(key_right_);
	up_released_ = keyboard_check_released(key_up_);
	left_released_ = keyboard_check_released(key_left_);
	down_released_ = keyboard_check_released(key_down_);
	a_released_ = keyboard_check_released(key_a_);
	b_released_ = keyboard_check_released(key_b_);
	x_released_ = keyboard_check_released(key_x_);
	y_released_ = keyboard_check_released(key_y_);
	l_released_ = keyboard_check_released(key_l_);
	r_released_ = keyboard_check_released(key_r_);
	start_released_ = keyboard_check_released(key_start_);
	select_released_ = keyboard_check_released(key_select_);
#endregion