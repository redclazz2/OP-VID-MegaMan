///@func audio_play_sound_ext(soundid,priority,loops,gain,pitch)
///@desc Play a new sound effect with a custom gain and/or pitch.
///@arg soundid
///@arg priority
///@arg loops
///@arg gain
///@arg pitch
function audio_play_sound_ext(){
	var _soundid = argument[0];
	var _priority = argument[1];
	var _loops = argument[2];
	var _gain = argument[3];
	var _pitch = argument[4];

	//Play sound
	var _snd = audio_play_sound(_soundid,_priority,_loops);

	//Adjust gain/pitch
	if(_gain != noone) { audio_sound_gain(_snd,_gain,0); }
	if(_pitch != noone)	{ audio_sound_pitch(_snd,_pitch); }

	//Return our sound id for further processing
	return _snd;
}

function re_audio_play_sound_ext(sid,prio,loop,gain,pitch){
	var _snd = audio_play_sound(sid,prio,loop);
	if(gain != noone) { audio_sound_gain(_snd,gain,0); }
	if(pitch != noone)	{ audio_sound_pitch(_snd,pitch); }
	return _snd;
}