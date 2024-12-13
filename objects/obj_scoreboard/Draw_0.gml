draw_text(32, 55, "Score: " + string(score));

if instance_exists(obj_player) {
    draw_healthbar(32, 16, 32 + (global.max_player_health * 2), 40, global.player_health, c_black, c_red, c_lime, 0, true, true);
} 
else {
    draw_text(obj_scoreboard.x, obj_scoreboard.y, "R to Restart");
}

if instance_exists(obj_key) {
    image_alpha = 0;

    draw_self();

    draw_set_font(fnt_menu);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    draw_text(x, y, "YOU WIN!");

    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}
