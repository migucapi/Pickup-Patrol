if (global.game_paused) {
    speed = 0;
    exit;
}

//Chase sound
if (!caught_player) {
    if (!chase_sound_playing) {
        audio_play_sound(snd_boss_chase, 5, true);
        chase_sound_playing = true;
    }
} else {
    if (chase_sound_playing) {
        audio_stop_sound(snd_boss_chase);
        chase_sound_playing = false;
    }
}

if (!caught_player) {
    speed = 1.6;
    direction = point_direction(x, y, obj_player.x, obj_player.y);
    x = clamp(x, 10, room_width - 10);
    y = clamp(y, 10, room_height - 10);
}