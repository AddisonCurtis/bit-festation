/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 18EBD245
/// @DnDArgument : "code" "$(13_10)// Create bullet$(13_10)var temp = instance_create_layer(x, y, "Instances", obj_bullet);$(13_10)if(sprite_index == sBlue_Down){$(13_10)	with(temp){$(13_10)		vspeed = 10;$(13_10)	}$(13_10)}else$(13_10)if(sprite_index == sBlue_Left){$(13_10)	with(temp){$(13_10)		hspeed = -10;$(13_10)	}$(13_10)}else$(13_10)if(sprite_index == sBlue_Right){$(13_10)	with(temp){$(13_10)		hspeed = 10;$(13_10)	}$(13_10)}else$(13_10)if(sprite_index == sBlue_Up){$(13_10)	with(temp){$(13_10)		vspeed = -10;$(13_10)	}	$(13_10)}$(13_10)with(obj_gameController){$(13_10)	numMoves +=1;$(13_10)}$(13_10)"

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