if (place_meeting(x + hspeed, y, obj_block)) {
    hspeed = -hspeed;
}

if (place_meeting(x, y + vspeed, obj_block)) {
    vspeed = -vspeed;
}
