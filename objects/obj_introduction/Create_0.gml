obj_camera.state_ = CAM_MODE.free;
obj_camera.x = 0;
obj_camera.y = room_height - obj_camera.view_height_;

song_ = queue_new_song(mus_introduction,1,0,SEC);
skip_ = false;

dialogue_ = [
	@"YEAR 20XX
	ROBOTS AND HUMANS LIVE IN PEACE,",
	
	@"TALES OF CHAOS ARE LONG LONG
	FORGOTTEN. FUTURE LOOKS BRIGHT,",
	
	@"UNTIL AN UNKWON VIRUS, CODENAME
	'WILLY' ERUPTED VIOLENCE,",
	
	@"ONLY ONE ROBOT IS UP TO
	FIGHT IT,",
	
	@"A FORGOTTEN HERO MUST RISE
	ONE AGAIN!"
];

line_ = 0;
fade_speed_ = 0.005;
wait_duration_ = SEC * 4;
wait_timer_ = -1;
alpha_ = 0;
mode_ = true;