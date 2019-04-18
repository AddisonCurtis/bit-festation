
// Create bullet
var temp = instance_create_layer(x, y, "Instances", obj_bullet);
if(sprite_index == sBlue_Down){
	with(temp){
		vspeed = 10;
	}
}else
if(sprite_index == sBlue_Left){
	with(temp){
		hspeed = -10;
	}
}else
if(sprite_index == sBlue_Right){
	with(temp){
		hspeed = 10;
	}
}else
if(sprite_index == sBlue_Up){
	with(temp){
		vspeed = -10;
	}	
}
with(obj_gameController){
	numMoves +=1;
}