draw_set_alpha(alpha);
draw_set_halign(fa_center);
var center_x = room_width / 2;

//How to Play
draw_set_font(fnt_heading);
var title_scale = 0.5;
draw_set_colour(c_black);
draw_text_transformed(center_x + 2, 12, "How to Play", title_scale, title_scale, 0);
draw_set_colour(c_white);
draw_text_transformed(center_x, 10, "How to Play", title_scale, title_scale, 0);

//Control List
draw_set_font(fnt_body);
var line_scale = 0.42;
var lines = [
    "Move: WASD or Arrow Keys",
    "Pause: ESC",
    "Goal: Collect litter before time runs out",
    "Avoid wildlife - they steal litter first",
    "Boss level: 3 lives - don't get caught!"
];
var ly = 80;
for (var i = 0; i < array_length(lines); i++) {
    draw_set_colour(c_black);
    draw_text_transformed(center_x + 1, ly + 1, lines[i], line_scale, line_scale, 0);
    draw_set_colour(c_white);
    draw_text_transformed(center_x, ly, lines[i], line_scale, line_scale, 0);
    ly += 18;
}

//Message
var msg_scale = 0.45;
var msg = "Clean Sweep - protecting wildlife, one piece of litter at a time.";
var max_width = 300;
var msg_y = ly + 20;

draw_set_alpha(alpha * 0.55);
draw_set_colour(c_black);
draw_rectangle(center_x - max_width/2 - 10, msg_y - 8, center_x + max_width/2 + 10, msg_y + 48, false);
draw_set_alpha(alpha);

draw_set_colour(c_white);
draw_text_ext_transformed(center_x, msg_y, msg, 24, max_width, msg_scale, msg_scale, 0);

//Footer
draw_set_font(fnt_body);
var footer_scale = 0.42;
draw_set_colour(c_black);
draw_text_transformed(center_x + 1, 246, "ESC or M - Back to Menu", footer_scale, footer_scale, 0);
draw_set_colour(c_white);
draw_text_transformed(center_x, 245, "ESC or M - Back to Menu", footer_scale, footer_scale, 0);

draw_set_halign(fa_left);
draw_set_alpha(1);