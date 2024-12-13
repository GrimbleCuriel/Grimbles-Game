// Movements
if (instance_place(x, y, obj_ladder)) {
    if (keyboard_check(ord("W")) or keyboard_check(ord("S"))) {
        climbing = true;
        vspeed = 0;
        gravity = 0;
    }
} else {
    climbing = false;
}

if (climbing) {
    if (keyboard_check(ord("W"))) {
        y -= climbSpeed;
    }
    if (keyboard_check(ord("S"))) {
        y += climbSpeed;
    }

    if (keyboard_check(ord("A"))) {
        x -= global.move_speed;
    }
    if (keyboard_check(ord("D"))) {
        x += global.move_speed;
    }

    if (!place_meeting(x, y + 1, obj_ladder) or place_meeting(x, y + 1, obj_block)) {
        climbing = false;
    }
    gravity = 0;
} else {
    if (keyboard_check(vk_space) and instance_place(x, y + 1, obj_block)) {
        vspeed = global.jump_speed;
    }
    if (!instance_place(x, y + 1, obj_block)) {
        gravity = 0.25;
    }
    if (keyboard_check(ord("A")) and !instance_place(x - global.move_speed, y, obj_block)) {
        x -= global.move_speed;
        image_xscale = -1;
        sprite_index = spr_player_walk;
    }
    if (keyboard_check(ord("D")) and !instance_place(x + global.move_speed, y, obj_block)) {
        x += global.move_speed;
        image_xscale = 1;
        sprite_index = spr_player_walk;
    }
}

if (instance_place(x, y + 1, obj_block) or climbing == true or instance_place(x, y + 1, obj_platform)) {
    gravity = 0;
} else {
    gravity = 0.25;
}

if (vspeed > 12) {
    vspeed = 12;
}

//room switching
if keyboard_check_pressed(ord("W")) and place_meeting(x,y,obj_street) {
    room_goto(rm_street);
}
if keyboard_check_pressed(ord("W")) and place_meeting(x,y,obj_street2) {
    room_goto(rm_street2);
}
if keyboard_check_pressed(ord("W")) and place_meeting(x,y,obj_officedoor) {
    room_goto(rm_office);
}
if keyboard_check_pressed(ord("W")) and place_meeting(x,y,obj_bossdoor) {
    room_goto(rm_Boss);
}


//Weapons
if (mouse_check_button(mb_left) or keyboard_check(ord("Z"))) and !instance_exists(obj_chakram) {
    var mouseX = mouse_x;
    var mouseY = mouse_y;
    var chakram = instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_chakram);
    chakram.direction = point_direction(chakram.x, chakram.y, mouseX, mouseY);
    chakram.speed = 7;
}


// Animations
if (climbing) {
    sprite_index = spr_player;
} else if (vspeed != 0) {
    sprite_index = spr_player_walk;
} else if (keyboard_check(ord("A")) or keyboard_check(ord("D"))) {
    sprite_index = spr_player_walk;
} else {
    sprite_index = spr_player;
}