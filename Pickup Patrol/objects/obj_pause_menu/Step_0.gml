if (global.game_paused) {
    if (keyboard_check_pressed(ord("L"))) {
        global.game_paused = false;
        room_goto(room_level_select);
    }
    if (keyboard_check_pressed(ord("M"))) {
        global.game_paused = false;
        room_goto(room_menu);
    }
}