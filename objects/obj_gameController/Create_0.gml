action = false;
numMoves = 0;

hp = 100;
money = 5000;
//inventory variables
//inventory = [obj_shortSword, noone, noone];
inventory[0] = obj_shortSword;
equipedWeapon = obj_shortSword;
selectedSlot = 0;

//win conditions
enemyCount = 0;
wave3clear = false;

audio_play_sound(sound_ILLEGAL_SHOP_SONG, 0, 1);