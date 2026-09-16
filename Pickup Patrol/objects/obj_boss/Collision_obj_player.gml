if (!caught_player) {
    caught_player = true;
    global.player_lives -= 1;
    global.flash_timer = 15;
	
	//Sound Effect
    audio_play_sound(snd_boss_hit, 0, false);

//1 second before player can get hit again
    if (global.player_lives <= 0) {
        room_goto(room_gameover);
    } else {
        obj_player.x = 40;
        obj_player.y = 40;
        alarm[0] = 60;
    }
}