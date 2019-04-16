/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 78E21EF3
/// @DnDArgument : "code" "if(targX > x){$(13_10)	x+=4;	$(13_10)} else if(targX < x){$(13_10)	x-=4;	$(13_10)} else if(targY < y){$(13_10)	y-=4;$(13_10)} else if(targY > y){$(13_10)	y+=4;	$(13_10)} else {$(13_10)	moving = false;$(13_10)} $(13_10)"
if(targX > x){
	x+=4;	
} else if(targX < x){
	x-=4;	
} else if(targY < y){
	y-=4;
} else if(targY > y){
	y+=4;	
} else {
	moving = false;
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7385190E
/// @DnDDisabled : 1
/// @DnDArgument : "code" "var val = 0;$(13_10)if(keyboard_check(vk_anykey)){$(13_10)	with(obj_gameController){$(13_10)		numMoves++;$(13_10)		val = numMoves;$(13_10)		//TODO change anykey to action keys$(13_10)	}$(13_10)	if(val > 0){$(13_10)		$(13_10)		show_message("vk_any: " + string(val));		$(13_10)	}		$(13_10)}"