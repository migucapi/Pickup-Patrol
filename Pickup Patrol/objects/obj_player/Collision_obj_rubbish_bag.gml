instance_destroy(other);
global.player_score += 10;

//Sound Effect
audio_play_sound(snd_pickup, 0, false);

//Score Popup
var popup = instance_create_layer(x, y - 10, "Instances", obj_score_popup);
popup.popup_text = "+10";