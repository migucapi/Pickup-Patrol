change_timer--;
if (change_timer <= 0) {
    direction = irandom(360);
    change_timer = irandom_range(20, 60);
}
if (x < 10 || x > room_width - 10) direction = 180 - direction;
if (y < 10 || y > room_height - 10) direction = -direction;