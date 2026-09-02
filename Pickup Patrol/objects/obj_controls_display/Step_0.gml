alpha = min(alpha + 0.02, 1);

if (keyboard_check_pressed(vk_escape) || keyboard_check_pressed(ord("M"))) {
    room_goto(room_menu);
}