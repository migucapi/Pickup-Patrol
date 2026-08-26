y -= 1; // floats upward
timer--;
alpha = timer / 40;
if (timer <= 0) {
    instance_destroy();
}