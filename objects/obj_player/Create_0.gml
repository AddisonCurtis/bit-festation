DIRECTIONAL_KEYS = [ord("W"), ord("A"), ord("S"), ord("D")];
KEY_DELAY_INITIAL_WAIT = room_speed/2;
KEY_DELAY_REAPEAT_WAIT = room_speed/20;

repeatDelay = KEY_DELAY_REAPEAT_WAIT;

madeMove = false;

moveKeyDelay = 0;

globalvar attack_direction;
attack_direction = "none";

//Replaced with gameController health
//globalvar curr_health ;
//curr_health = 10;

//SHOP LOGIC
money = 500;
items[0] = "fake sword";