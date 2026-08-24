var move_x = (keyboard_check(ord("D")) + keyboard_check(vk_right)) - (keyboard_check(ord("A")) + keyboard_check(vk_left));
var move_y = (keyboard_check(ord("S")) + keyboard_check(vk_down)) - (keyboard_check(ord("W")) + keyboard_check(vk_up));

// try moving horizontally, cancel if it hits driftwood
if (!place_meeting(x + move_x * 4, y, obj_driftwood)) {
    x += move_x * 4;
}

// try moving vertically, cancel if it hits driftwood
if (!place_meeting(x, y + move_y * 4, obj_driftwood)) {
    y += move_y * 4;
}