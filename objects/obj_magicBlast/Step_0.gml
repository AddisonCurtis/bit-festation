/// @description Insert description here
// You can write your code in this editor
if(obj_player.madeMove) {
	var dirRads = noone;
	if(slashDir == slashDir.right){
		show_debug_message("right");
		dirRads = 0;	
	}
	if(slashDir == slashDir.up){
		show_debug_message("up");
		dirRads = pi/2;	
	}else 
	if(slashDir == slashDir.left){
		show_debug_message("left");
		dirRads = pi;
	}else
	if(slashDir == slashDir.down){
		show_debug_message("down");
		dirRads = (3*pi)/2;
	}
	
	//if (distance_to_object(obj_player) > 30) {
	// Set Point Direction
	//dirRads = point_direction(x,y, obj_player.x, obj_player.y)*pi/180;
	
	vert = sin(dirRads);
	hori = cos(dirRads);
	if (abs(vert) > abs(hori)) {
		tileMove(self, 0, -sign(vert));	
	} else {
		tileMove(self, sign(hori), 0);
	}
}