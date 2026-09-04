if (global.game_paused) exit;


//Movement
var move_x = sign(keyboard_check(ord("D")) + keyboard_check(vk_right)) - sign(keyboard_check(ord("A")) + keyboard_check(vk_left));
var move_y = sign(keyboard_check(ord("S")) + keyboard_check(vk_down)) - sign(keyboard_check(ord("W")) + keyboard_check(vk_up));


//Speed Boost
if (speed_boost_timer > 0) {
    speed_boost_timer--;
    move_spd = 7;
} else {
    move_spd = 4;
}

// Determine facing direction from input
if (move_x > 0) facing = "right";
else if (move_x < 0) facing = "left";
else if (move_y > 0) facing = "down";
else if (move_y < 0) facing = "up";

// Swap sprite based on movement + facing
var is_moving = (move_x != 0 || move_y != 0);
if (is_moving) {
    if (facing == "down") sprite_index = spr_player_walk_down;
    else if (facing == "up") sprite_index = spr_player_walk_up;
    else if (facing == "left") sprite_index = spr_player_walk_left;
    else if (facing == "right") sprite_index = spr_player_walk_right;
    image_speed = 1;
} else {
    sprite_index = spr_player_idle;
    image_speed = 1;
}


//Driftwood Obstacle (is parent of others)
if (!place_meeting(x + move_x * move_spd, y, obj_driftwood)) {
    x += move_x * move_spd;
}
if (!place_meeting(x, y + move_y * move_spd, obj_driftwood)) {
    y += move_y * move_spd;
}


//Clamp Boundaries
x = clamp(x, 0, room_width - sprite_width);
y = clamp(y, 0, room_height - sprite_height);