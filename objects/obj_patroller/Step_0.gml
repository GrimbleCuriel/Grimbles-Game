shot_timer -= 1;
if (shot_timer <= 0 and distance_to_object(obj_player) < 300) {
    instance_create_layer(x, y, "Instances", obj_bolt);

    shot_timer = shot_interval;
}