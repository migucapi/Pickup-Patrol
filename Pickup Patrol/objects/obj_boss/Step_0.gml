// Continuously chase player
if (instance_exists(obj_player)) {
    direction = point_direction(x, y, obj_player.x, obj_player.y);
}

// Keep boss inside room bounds continuously
x = clamp(x, 16, room_width - 16);
y = clamp(y, 80, room_height - 16);