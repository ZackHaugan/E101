draw_self();
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text(77, 104, message);

draw_set_color(c_red);

if(message = "0") {
	
	draw_line_width(-1, 380, 1365, 380, 10);
}
//functions currently don't match up with x and y axes
if(message = "x^2") {
	for(i = 0; i < 40; i++) {
		//want (742, 350) to be a point on graph
		//should occur when i between 21 and 22
		draw_line_width(34.15*i, (380-10*power(-20+i, 2)), 34.15*(i+1), (380-10*power(-20 + i + 1, 2)), 10);
	}
}
if(message = "2x^2") {
	for(i = 0; i < 40; i++) {
		draw_line_width(34.15*i, 380-(20*power(-20+i, 2)), 34.15*(i+1), 380-(20*power(-20+i+1, 2)), 10);
	}
}
//replace 2 with a variable for slider
if(message = "x^3") {
	for(i = 0; i < 40; i++) {
		draw_line_width(34.15*i, 380-5*power(-20+i, 3), 34.15*(i+1), 380-5*power(-20 + i + 1, 3), 10);
	}
}
//replace exponent with variable or make it fixed for level