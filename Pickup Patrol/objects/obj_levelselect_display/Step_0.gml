alpha = min(alpha + 0.02, 1);

if (keyboard_check_pressed(ord("1"))) {
    room_goto(room_beach);
}
if (keyboard_check_pressed(ord("2"))) {
    room_goto(room_forest);
}
if (keyboard_check_pressed(ord("3"))) {
    room_goto(room_boss);
}
if (keyboard_check_pressed(vk_escape)) {
    room_goto(room_menu);
}