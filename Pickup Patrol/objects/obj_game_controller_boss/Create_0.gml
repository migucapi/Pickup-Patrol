global.game_paused = false;

//Player Lives
global.player_lives = 3;

//Heart Flash
global.flash_timer = 0;

//Speed Powerup
powerup_timer = 500;


//Win Condition
global.player_score = 0;
global.target_score = 380;
time_left = 40;
spawn_timer = 0;
spawn_interval = 60;
max_rubbish = 5;

global.current_level = room;

//Spawner
for (var i = 0; i < 3; i++) {
    var sx = irandom_range(20, room_width - 20);
    var sy = irandom_range(20, room_height - 20);
    instance_create_layer(sx, sy, "Instances", obj_rubbish_barrel);
}

// Spawn speed powerup
powerup_timer--;
if (powerup_timer <= 0 && !instance_exists(obj_powerup_speed)) {
    var px = irandom_range(20, room_width - 20);
    var py = irandom_range(20, room_height - 20);
    instance_create_layer(px, py, "Instances", obj_powerup_speed);
    powerup_timer = 300;
}