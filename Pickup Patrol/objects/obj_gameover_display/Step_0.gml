alpha = min(alpha + 0.02, 1);

if (keyboard_check_pressed(ord("R"))) {
    var rubbish_types = [obj_rubbish_bottle, obj_rubbish_can, obj_rubbish_bag, obj_rubbish_wrapper, obj_rubbish_barrel];
    for (var i = 0; i < array_length(rubbish_types); i++) {
        with (rubbish_types[i]) instance_destroy();
    }

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