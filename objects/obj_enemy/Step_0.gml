if (object_exists(obj_player) and distance_to_object(obj_player) < 300) {
    if (!hasSpawnedProjectile) {
        var proj = instance_create_layer(x, y, "Instances", obj_enemyChakram)
        proj.owner = id;
        hasSpawnedProjectile = true;
    }
}
