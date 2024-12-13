global.max_player_health += 50;

global.player_health = global.max_player_health;

score += 5;

instance_create_layer(x, y, "Instances", obj_HboostAnimation);
instance_destroy(self);
