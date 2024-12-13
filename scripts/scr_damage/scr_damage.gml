function inflict_damage(damage)
{
    global.player_health -= damage;
    if (global.player_health <= 0)
    {
        instance_destroy(obj_player);
    }
}
