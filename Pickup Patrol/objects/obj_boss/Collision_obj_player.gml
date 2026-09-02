if (!caught_player) {
    caught_player = true;
    global.player_lives -= 1;
    global.flash_timer = 15;


//1 second before boss starts chasing again
    if (global.player_lives <= 0) {
        room_goto(room_gameover);
    } else {
        obj_player.x = 40;
        obj_player.y = 40;
        alarm[0] = 60;
    }
}