global.flash_timer = 0;

global.player_score = 0;
global.target_score = 150;
time_left = 20; // seconds

spawn_timer = 0;
spawn_interval = 90; // frames between new rubbish (about 1.5 sec at 60fps)
max_rubbish = 6; // don't let too many pile up at once

global.current_level = room;

// Spawn Loop
for (var i = 0; i < 3; i++) {
    var sx = irandom_range(20, room_width - 20);
    var sy = irandom_range(20, room_height - 20);
    var obj_to_spawn = choose(obj_rubbish_bottle, obj_rubbish_can);
    instance_create_layer(sx, sy, "Instances", obj_to_spawn);
}

global.game_paused = false;