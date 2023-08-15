obj_camera.state_ = CAM_MODE.free;
obj_camera.x = 0;
obj_camera.y = room_height - obj_camera.view_height_;

song_ = queue_new_song(mus_introduction,1,0,SEC);
skip_ = false;

dialogue_ = [
	@"YEAR 20XX
	MEGAMAN HAS BROUGHT PEACE TO,",
	
	@"SOCIETY AFTER DR. WILLY'S
	ATTACK 1 YEAR AGO,",
	
	@"HOWEVER, ROBOTS STARTED TO BECOME
	HOSTILE AFTER A WHILE,",
	
	@"IT'S UP TO MEGAMAN ONCE
	AGAIN TO SAVE THE CITY,",
	
	@"AND STOP DR. WILLY'S
	EVIL PLANS!"
];

line_ = 0;
fade_speed_ = 0.005;
wait_duration_ = SEC * 4;
wait_timer_ = -1;
alpha_ = 0;
mode_ = true;