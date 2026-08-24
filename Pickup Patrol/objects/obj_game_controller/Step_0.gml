time_left -= 1/room_speed;

if (global.player_score >= global.target_score) {
    room_goto(room_win);
}
else if (time_left <= 0) {
    room_goto(room_gameover);
}

spawn_timer++;
if (spawn_timer >= spawn_interval) {
    spawn_timer = 0;

    var current_count = instance_number(obj_rubbish_bottle) + instance_number(obj_rubbish_can);

    if (current_count < max_rubbish) {
        var spawn_x = irandom_range(20, room_width - 20);
        var spawn_y = irandom_range(80, room_height - 20);

        if (choose(0, 1) == 0) {
            instance_create_layer(spawn_x, spawn_y, "Instances", obj_rubbish_bottle);
        } else {
            instance_create_layer(spawn_x, spawn_y, "Instances", obj_rubbish_can);
        }
    }
}