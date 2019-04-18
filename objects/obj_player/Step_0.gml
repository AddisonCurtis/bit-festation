// Handle key repeat delay
var keyDown = false;
for (var i=0; i<array_length_1d(DIRECTIONAL_KEYS); i++) {
	if (keyboard_check(DIRECTIONAL_KEYS[i])) {
		keyDown = true;
		if ((moveKeyDelay == 0 and repeatDelay == 0) or moveKeyDelay == KEY_DELAY_INITIAL_WAIT) {
			switch (DIRECTIONAL_KEYS[i]) {
				case ord("W"): tileMove(self,  0, -1); break;
				case ord("A"): tileMove(self, -1,  0); break;
				case ord("S"): tileMove(self,  0,  1); break;
				case ord("D"): tileMove(self,  1,  0); break;
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