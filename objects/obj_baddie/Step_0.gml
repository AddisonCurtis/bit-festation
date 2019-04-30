/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2965A076
/// @DnDArgument : "code" "var distRange = 17;$(13_10)$(13_10)if(abs(y - obj_player.y) < distRange && (x - obj_player.x) > 0 && (x - obj_player.x) < distRange){$(13_10)	show_debug_message("left");	$(13_10)}$(13_10)if(abs(y - obj_player.y) < distRange && (x - obj_player.x) < 0 && (x - obj_player.x) > -distRange){$(13_10)	show_debug_message("right");	$(13_10)}$(13_10)if(abs(x - obj_player.x) < distRange && (y - obj_player.y) > 0 && (y - obj_player.y) < distRange){$(13_10)	show_debug_message("up");	$(13_10)}$(13_10)if(abs(x - obj_player.x) < distRange && (y - obj_player.y) < 0 && (y - obj_player.y) > -distRange){$(13_10)	show_debug_message("down");	$(13_10)}$(13_10)$(13_10)//if left and up then do nothing"
var distRange = 17;

if(abs(y - obj_player.y) < distRange && (x - obj_player.x) > 0 && (x - obj_player.x) < distRange){
	show_debug_message("left");	
}
if(abs(y - obj_player.y) < distRange && (x - obj_player.x) < 0 && (x - obj_player.x) > -distRange){
	show_debug_message("right");	
}
if(abs(x - obj_player.x) < distRange && (y - obj_player.y) > 0 && (y - obj_player.y) < distRange){
	show_debug_message("up");	
}
if(abs(x - obj_player.x) < distRange && (y - obj_player.y) < 0 && (y - obj_player.y) > -distRange){
	show_debug_message("down");	
}

//if left and up then do nothing