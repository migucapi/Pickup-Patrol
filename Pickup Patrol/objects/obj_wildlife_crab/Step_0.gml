if (global.game_paused) exit;

// bounce off left/right edges only — crab doesn't wander vertically
if (x < 10 || x > room_width - 10) {
    hspeed = -hspeed;
}