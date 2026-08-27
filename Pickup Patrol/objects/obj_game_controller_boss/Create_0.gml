global.player_score = 0;
global.target_score = 300;
time_left = 40;
spawn_timer = 0;
spawn_interval = 100;
max_rubbish = 5;

global.current_level = room;

// Iteration control structure — spawn starting rubbish in a loop
for (var i = 0; i < 3; i++) {
    var sx = irandom_range(20, room_width - 20);
    var sy = irandom_range(20, room_height - 20);
    instance_create_layer(sx, sy, "Instances", obj_rubbish_barrel);
}