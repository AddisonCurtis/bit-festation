// Handle key repeat delay
keyDown = false;
madeMove = false;
for (var i=0; i<array_length_1d(DIRECTIONAL_KEYS); i++) {
	if (keyboard_check(DIRECTIONAL_KEYS[i])) {
		keyDown = true;
		if ((moveKeyDelay == 0 and repeatDelay == 0) or moveKeyDelay == KEY_DELAY_INITIAL_WAIT) {
			madeMove = true;
			
			audio_play_sound(sound_walk, 0, 0);
			switch (DIRECTIONAL_KEYS[i]) {
				case ord("W"): 
					tileMove(self,  0, -1);
					attack_direction = "up";
					instance_destroy(obj_cursor);
					break;
				case ord("A"):
					tileMove(self, -1,  0); 
					//FLip sprite to the left - which failed. Could move logic into tileMove instead.
					//if(image_xscale > 0) image_xscale*=-1;	x += abs(2*sprite_width); 
					instance_destroy(obj_cursor);
					attack_direction = "left";
					break;
				case ord("S"): 
					tileMove(self,  0,  1);
					instance_destroy(obj_cursor);
					attack_direction = "down";
					break;
				case ord("D"): 
					tileMove(self,  1,  0); 
					//if(image_xscale < 0) image_xscale*=-1; x -= abs(2*sprite_width); //Flip sprite to the right
					instance_destroy(obj_cursor);
					attack_direction = "right";
					break;
			}
		}
		
		
		if (moveKeyDelay > 0) {
			moveKeyDelay--;
		} else if (repeatDelay > 0) {
			repeatDelay--;
		} else if (repeatDelay == 0) {
			repeatDelay = KEY_DELAY_REAPEAT_WAIT;
		}
		break;
	}
}
if (not keyDown) {
	moveKeyDelay = KEY_DELAY_INITIAL_WAIT;
}


/*
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
}*/