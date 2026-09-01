draw_set_font(-1);
draw_text(20, 20, "Score: " + string(global.player_score) + " / " + string(global.target_score));
draw_text(20, 40, "Time: " + string(floor(obj_game_controller.time_left)));

//Only show if in boss room
if (room == room_boss) {
    var heart_x = room_width - 80;
    var heart_y = 8;
    for (var i = 0; i < 3; i++) {
        if (i < global.player_lives) {
            draw_sprite(spr_heart_full, 0, heart_x + i * 22, heart_y);
        } else {
            draw_sprite(spr_heart_empty, 0, heart_x + i * 22, heart_y);
        }
    }
}


//Heart Flash
if (global.flash_timer > 0) {
    global.flash_timer--;
    draw_set_alpha((global.flash_timer / 15) * 0.4);
    draw_set_colour(c_red);
    draw_rectangle(0, 0, room_width, room_height, false);
    draw_set_alpha(1);
    draw_set_colour(c_white);
}