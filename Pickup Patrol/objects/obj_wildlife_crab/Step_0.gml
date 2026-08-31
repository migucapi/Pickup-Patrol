//Pause menu control
if (global.game_paused) {
    hspeed = 0;
    exit;
}


//Boundaries
if (x < 10 || x > room_width - 10) {
    move_dir = -move_dir;
}
hspeed = move_dir * 1.5;