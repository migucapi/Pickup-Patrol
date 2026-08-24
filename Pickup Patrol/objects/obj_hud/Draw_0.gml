draw_set_font(-1);
draw_text(20, 20, "Score: " + string(global.player_score) + " / " + string(global.target_score));
draw_text(20, 40, "Time: " + string(floor(obj_game_controller.time_left)));