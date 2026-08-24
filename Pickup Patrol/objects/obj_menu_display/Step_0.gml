alpha = min(alpha + 0.02, 1);

if (keyboard_check_pressed(vk_enter)) {
    room_goto(room_level_select);
}