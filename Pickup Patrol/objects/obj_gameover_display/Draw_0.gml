draw_set_alpha(alpha);
draw_sprite(spr_gameover_title, 0, room_width/2 - sprite_get_width(spr_gameover_title)/2, 55);

draw_set_font(fnt_body);
draw_set_halign(fa_center);
draw_set_colour(c_black);
draw_text(room_width/2 + 1, 121, "Final Score: " + string(global.player_score));
draw_set_colour(c_white);
draw_text(room_width/2, 120, "Final Score: " + string(global.player_score));
draw_set_halign(fa_left);

draw_sprite(spr_endscreen_options, 0, room_width/2 - sprite_get_width(spr_endscreen_options)/2, 150);
draw_set_alpha(1);