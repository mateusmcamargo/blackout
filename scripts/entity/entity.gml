/// @function		sprite_change(sprite);
/// @description	Changes the sprite of an object and makes sure the animation starts on the first frame white the default speed
/// @param sprite	The sprite index

// Examples
//		in the object step event:
//		sprite_change(spr_player_idle);
var _sprite = argument0;
function sprite_change(_sprite){
	if (sprite_index != _sprite) {
		image_index = 0;
		sprite_index = _sprite;
	}
	image_speed = 1;
}

/// @function		animation_stop(instant);
/// @description	Stops the object's image_speed
/// @param instant	If true, stops the animation instantly, instead of waiting for animation end

// Examples
//		in the object step event:
//		animation_stop(true); /*stops the animation instantly*/
//
//		in the object step event:
//		animation_stop(false); /*stops the animation and the end of the animation loop*/

function animation_stop(argument0) {

	/*
	the ??= operator means that if the param is empty, it will asign the specified value value
	*/
	argument0??= false;
	
	if (argument0 == true) {
		image_speed = 0;	
	} else {
		if (image_index >= image_number - 1) {
			image_index = image_number - 1;
			image_speed = 0
		}
	}
}

//wave(from, to, duration, offset)
/// @description Returns a value that will wave back and forth between [from-to] over [duration] seconds
/// @param from min value
/// @param to max valur
/// @param duration duration in seconds
/// @param offset 

// Examples
//      image_angle = Wave(-45,45,1,0)  -> rock back and forth 90 degrees in a second
//      x = Wave(-10,10,0.25,0)         -> move left and right quickly
 
// Or here is a fun one! Make an object be all squishy!! ^u^
//      image_xscale = Wave(0.5, 2.0, 1.0, 0.0)
//      image_yscale = Wave(2.0, 0.5, 1.0, 0.0)
function wave(argument0, argument1, argument2, argument3) {
 
	var _a4 = (argument1 - argument0) * 0.5;
	return argument0 + _a4 + sin((((current_time * 0.001) + argument2 * argument3) / argument2) * (pi*2)) * _a4;
}