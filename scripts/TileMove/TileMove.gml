// Function will check if an entity can move to specified tile (relative to itself) and execute that move if possible
// Will return noone if it was able to move, or ids of collided object if not
var object = argument0;
var relDestX = argument1*16;
var relDestY = argument2*16;
var objW = object.sprite_width;
var objH = object.sprite_height;

collideObjects[0] = obj_baddie;

if (sign(relDestX) == -1 or sign(relDestY) == -1) {
	var i;
	for(i = 0; i < array_length_1d(collideObjects); i++){
		if(collideObjects[i] != noone){
			var collidedObject = collision_rectangle(object.x+relDestX, object.y+relDestY,
		                                         object.x+relDestX-sign(relDestX)*(objW-1), object.y+relDestY-sign(relDestY)*(objH-1),
												 collideObjects[i], false, false)				
		}	
	}
} else {
	var i;
	for(i = 0; i < array_length_1d(collideObjects); i++){
		if(collideObjects[i] != noone){
			var collidedObject = collision_rectangle(object.x+relDestX, object.y+relDestY,
		                                        object.x+relDestX+sign(relDestX)*(objW-1), object.y+relDestY+sign(relDestY)*(objH-1),
												collideObjects[i], false, false)
		}
	}
}

if (collidedObject != noone) {
	return false;
} else {
	object.x += relDestX;
	object.y += relDestY;
}
