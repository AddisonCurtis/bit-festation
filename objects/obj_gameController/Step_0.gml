action = false;
numMoves = 0;

for (var i=0; i<array_length_1d(inventory); i++) {
	if (keyboard_check(ord(string(i+1)))) {
		selectedSlot = i;
		equipedWeapon = inventory[i];
		break;
	}
}
