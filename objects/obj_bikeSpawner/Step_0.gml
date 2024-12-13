spawnTimer -= 1
if (spawnTimer <= 0)
{
    instance_create_layer(room_width - 1, 623, "Instances", obj_lightBike)
    spawnTimer = irandom_range(60, 2000)
}
