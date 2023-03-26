draw_self();
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text(77, 104, message);

draw_set_color(c_red);

if(message = "0") {
	//380 is where x axis is
	//1365 is width of screen
	draw_line_width(-1, 380, 1365, 380, 10);
}
if(message = "x^2") {
	for(i = 0; i < 40; i++) {
        //34.15 * 40 = 1366 (divides screen into 40 pieces to draw parts of the function)
		draw_line_width(34.15*i, (380-10*power(-20+i, 2)), 34.15*(i+1), (380-10*power(-20 + i + 1, 2)), 10);
	}
}
if(message = "2x^2") {
	for(i = 0; i < 40; i++) {
		draw_line_width(34.15*i, 380-(20*power(-20+i, 2)), 34.15*(i+1), 380-(20*power(-20+i+1, 2)), 10);
	}
}
if(message = "(1/2)x^2") {
	for(i = 0; i < 40; i++) {
		draw_line_width(34.15*i, 380-(5*power(-20+i, 2)), 34.15*(i+1), 380-(5*power(-20+i+1, 2)), 10);
	}
}
if(message = "(1/3)x^2") {
	for(i = 0; i < 40; i++) {
		draw_line_width(34.15*i, 380-(3.3*power(-20+i, 2)), 34.15*(i+1), 380-(3.3*power(-20+i+1, 2)), 10);
	}
}
if(message = "(1/5)x^2") {
	for(i = 0; i < 40; i++) {
		draw_line_width(34.15*i, 380-(2*power(-20+i, 2)), 34.15*(i+1), 380-(2*power(-20+i+1, 2)), 10);
		var _hit = collision_line(34.15*i, 380-(2*power(-20+i, 2)), 34.15*(i+1), 380-(2*power(-20+i+1, 2)), obj_obstacle1, true, false);
		/*with (_hit) {
			draw_text(380, 700, "Collision Detected");
		}*/
	}
}
var collision = 0;
if(message = "(1/10)x^2") {
	for(i = 0; i < 40; i++) {
		draw_line_width(34.15*i, 380-(power(-20+i, 2)), 34.15*(i+1), 380-(power(-20+i+1, 2)), 10);
		//Detect collision with obj_obstacle1 using collision_line
		var _hit = collision_line(34.15*i, 380-(power(-20+i, 2)), 34.15*(i+1), 380-(power(-20+i+1, 2)), obj_obstacle1, true, false);
		with (_hit) {
			/*draw_text(380, 700, "Collision Detected");*/ //used for testing
			collision +=1;
		}
	}
}
//used to count number of times different functions collide with the obstacle
if(collision > 0 && global.nonRepeat) {
	global.numCollisions++;
	collision = 0;
	global.nonRepeat = false;
}
//code below used for testing to show numCollisions
/*if(message = "Collisions") {
	draw_text(380, 700, string(global.numCollisions));
}*/
if(message = "x^3") {
	for(i = 0; i < 40; i++) {
		draw_line_width(34.15*i, 380-5*power(-20+i, 3), 34.15*(i+1), 380-5*power(-20 + i + 1, 3), 10);
	}
}
//replace exponent with variable or make it fixed for level