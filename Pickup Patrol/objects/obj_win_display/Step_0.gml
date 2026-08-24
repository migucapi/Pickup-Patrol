alpha = min(alpha + 0.02, 1);

if (keyboard_check_pressed(ord("R"))) {
    global.player_score = 0;
    room_goto(global.current_level);
}
if (keyboard_check_pressed(ord("M"))) {
    global.player_score = 0;
    room_goto(room_menu);
}
if (keyboard_check_pressed(ord("L"))) {
    global.player_score = 0;
    room_goto(room_level_select);
}