instance_destroy(other);
global.player_score += 20;

//Sound Effect
audio_play_sound(snd_pickup, 0, false);

var popup = instance_create_layer(x, y - 10, "Instances", obj_score_popup);
popup.popup_text = "+20";