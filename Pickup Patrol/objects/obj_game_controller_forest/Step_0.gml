if (keyboard_check_pressed(vk_escape)) {
    global.game_paused = !global.game_paused;
}
if (global.game_paused) exit;

time_left -= 1/room_speed;

if (global.player_score >= global.target_score) {
    room_goto(room_win);
}
else if (time_left <= 0) {
    room_goto(room_gameover);
}


//Spawner
spawn_timer++;
if (spawn_timer >= spawn_interval) {
    spawn_timer = 0;

    var current_count = instance_number(obj_rubbish_wrapper) + instance_number(obj_rubbish_bag);

    if (current_count < max_rubbish) {
        var sx = irandom_range(20, room_width - 20);
        var sy = irandom_range(20, room_height - 20);

        if (choose(0, 1) == 0) {
            instance_create_layer(sx, sy, "Instances", obj_rubbish_wrapper);
        } else {
            instance_create_layer(sx, sy, "Instances", obj_rubbish_bag);
        }
    }
}