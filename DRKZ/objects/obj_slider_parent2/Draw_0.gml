/// @description draw slider

draw_self();

draw_sprite_part(sprite_index, color_, 0, 0, sprite_width*value_, sprite_height, x, y-sprite_get_yoffset(sprite_index));
draw_sprite(s_slider_button, 0, x+sprite_width*value_, y);

// draw slider info
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_color(x+sprite_width/2, y-30, pretext_ + string(output_), text_color_, text_color_, text_color_, text_color_, 1);
draw_text_color(x - 20, y, string(minimum_), $000000, $000000, $000000, $000000, 1);
draw_text_color(x + sprite_width + 20, y, string(maximum_), $000000, $000000, $000000, $000000, 1);
