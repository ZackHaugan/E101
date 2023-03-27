/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_red);
//draw_line_width(-1, 380, 1365, 380, 10);
for(i = 0; i < 40; i++) {
    //34.15 * 40 = 1366 (divides screen into 40 pieces to draw parts of the function)
	draw_line_width(34.15*i, (380-18*(global.varM*(i-20)))-32*global.varB, 34.15*(i+1), (380-18*((i-20)+1)*global.varM) - 32*global.varB, 10);
}