/// @description Insert description here
// You can write your code in this editor
obj_gameController.money += value;
show_debug_message("player money is now: " + string(obj_gameController.money));
instance_destroy(self);