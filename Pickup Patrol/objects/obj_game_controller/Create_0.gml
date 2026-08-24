global.player_score = 0;
global.target_score = 100;
time_left = 20; // seconds

spawn_timer = 0;
spawn_interval = 90; // frames between new rubbish (about 1.5 sec at 60fps)
max_rubbish = 6; // don't let too many pile up at once

global.current_level = room;