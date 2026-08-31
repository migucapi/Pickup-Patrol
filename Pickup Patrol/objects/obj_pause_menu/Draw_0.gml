if (global.game_paused) {
    draw_set_alpha(0.6);
    draw_set_colour(c_black);
    draw_rectangle(0, 0, room_width, room_height, false);
    draw_set_alpha(1);

    draw_set_font(fnt_heading);
    draw_set_halign(fa_center);
    draw_set_colour(c_white);
    draw_text(room_width/2, 90, "Paused");

    draw_set_font(fnt_body);
    draw_text(room_width/2, 140, "ESC - Resume");
    draw_text(room_width/2, 165, "L - Level Select");
    draw_text(room_width/2, 190, "M - Main Menu");
    draw_set_halign(fa_left);
}