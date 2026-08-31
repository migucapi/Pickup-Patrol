if (global.game_paused) exit;

var move_x = sign(keyboard_check(ord("D")) + keyboard_check(vk_right)) - sign(keyboard_check(ord("A")) + keyboard_check(vk_left));
var move_y = sign(keyboard_check(ord("S")) + keyboard_check(vk_down)) - sign(keyboard_check(ord("W")) + keyboard_check(vk_up));

if (speed_boost_timer > 0) {
    speed_boost_timer--;
    move_spd = 7;
} else {
    move_spd = 4;
}

if (!place_meeting(x + move_x * move_spd, y, obj_driftwood)) {
    x += move_x * move_spd;
}
if (!place_meeting(x, y + move_y * move_spd, obj_driftwood)) {
    y += move_y * move_spd;
}

x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);