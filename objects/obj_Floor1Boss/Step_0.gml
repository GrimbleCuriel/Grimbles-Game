if (object_exists(obj_player) and distance_to_object(obj_player) < 595) {
    if (!hasSpawnedProjectile) {
        var proj = instance_create_layer(x, y, "Instances", obj_Floor1BossChakram);
        proj.owner = id;
        hasSpawnedProjectile = true;
    }
}

