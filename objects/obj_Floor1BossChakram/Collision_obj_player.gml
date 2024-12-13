if (instance_exists(owner)) {
    owner.hasSpawnedProjectile = false;
}
inflict_damage(30);
instance_destroy();
