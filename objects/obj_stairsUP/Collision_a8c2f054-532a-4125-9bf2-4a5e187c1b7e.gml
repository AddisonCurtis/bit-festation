// If the player tries to leave before the wave is over, they should be prompted for if they want to quit the game
room_goto(roo_shop);

audio_stop_all();
audio_play_sound(sound_ILLEGAL_SHOP_SONG, 0, 1);