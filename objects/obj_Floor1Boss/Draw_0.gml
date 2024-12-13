draw_self();

if (instance_exists(self)) {
    var bar_left = 1118;
    var bar_top = 16;
    var bar_right = 1718;
    var bar_bottom = 40;

    draw_set_color(c_black);
    draw_rectangle(bar_left, bar_top, bar_right, bar_bottom, false);

    var health_percentage = boss_health / max_health;
    var health_bar_width = (bar_right - bar_left) * health_percentage;

    draw_set_color(c_orange);
    draw_rectangle(bar_right - health_bar_width, bar_top, bar_right, bar_bottom, false);
}

draw_set_color(c_white);
