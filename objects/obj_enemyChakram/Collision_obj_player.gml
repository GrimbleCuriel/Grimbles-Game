if (instance_exists(owner)) {
    owner.hasSpawnedProjectile = false;
}
inflict_damage(20);
instance_destroy();
