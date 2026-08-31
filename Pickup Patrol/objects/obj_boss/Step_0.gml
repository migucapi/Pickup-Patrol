if (global.game_paused) {
    speed = 0;
    exit;
}
if (!caught_player) {
    speed = 1.6;
    direction = point_direction(x, y, obj_player.x, obj_player.y);
    x = clamp(x, 10, room_width - 10);
    y = clamp(y, 10, room_height - 10);
}