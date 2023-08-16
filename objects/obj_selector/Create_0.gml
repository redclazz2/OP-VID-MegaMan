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