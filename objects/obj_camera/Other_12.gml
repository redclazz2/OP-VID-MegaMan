///@description Free State
var _x = clamp(x,0,room_width - view_width_),
	_y = clamp(y,0,room_height - view_height_);
x = _x;
y = _y;

camera_set_view_pos(CAM,x,y);