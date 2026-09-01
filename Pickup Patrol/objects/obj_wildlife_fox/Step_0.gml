if (global.game_paused) {
    speed = 0;
    exit;
}
speed = 2.2;

change_timer--;
if (change_timer <= 0) {
    direction = irandom(360);
    change_timer = irandom_range(30, 75);
}


//Reverse its direction at boundaries
if (x < 10 || x > room_width - 10) direction = 180 - direction;
if (y < 80 || y > room_height - 10) direction = -direction;

//Clamp boundaries
x = clamp(x, 10, room_width - 10);
y = clamp(y, 80, room_height - 10);