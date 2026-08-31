if (global.game_paused) exit;

change_timer--;
if (change_timer <= 0) {
    direction = irandom(360);
    change_timer = irandom_range(30, 90);
}

// keep it inside the sand area, bounce off edges
if (x < 10 || x > room_width - 10) direction = 180 - direction;
if (y < 80 || y > room_height - 10) direction = -direction;