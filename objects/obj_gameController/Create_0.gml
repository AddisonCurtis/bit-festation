action = false;
numMoves = 0;

hp = 100;
money = 0;
//inventory variables
inventory = [obj_shortSword, noone, noone];
equipedWeapon = obj_shortSword;
selectedSlot = 0;

//win conditions
enemyCount = 0;
wave3clear = false;

audio_play_sound(sound_ILLEGAL_SHOP_SONG, 0, 1);