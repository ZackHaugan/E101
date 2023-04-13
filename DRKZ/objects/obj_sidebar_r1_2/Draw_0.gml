/// @description Draw the sidebar

draw_self();
draw_sprite(sidebar_background, 0, 0, 0);

// draw title
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_color(sprite_width/2, 20, title_, $000000, $000000, $000000, $000000, 1);

// draw general form
draw_text_color(sprite_width/2, 100, "y = a|b(x-h)| + k", $000000, $000000, $000000, $000000, 1);
