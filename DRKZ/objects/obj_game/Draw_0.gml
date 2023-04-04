/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_red);
var bPast = 0;
//draw_line_width(-1, 380, 1365, 380, 10);
for(i = 0; i < 40; i++) {
    //34.15 * 40 = 1366 (divides screen into 40 pieces to draw parts of the function)
	draw_line_width(34.15*i, (380-18*(global.varM*(i-20)))-32*global.varB, 34.15*(i+1), (380-18*((i-20)+1)*global.varM) - 32*global.varB, 10);
	//Detect collision with obj_obstacle1 using collision_line
	var _hit = collision_line(34.15*i, (380-18*(global.varM*(i-20)))-32*global.varB, 34.15*(i+1), (380-18*((i-20)+1)*global.varM) - 32*global.varB, obj_obstacle1, true, false);
	with (_hit) {
		//draw_text(380, 700, "Collision Detected" + string(global.numCollisions)); //used for testing
    	bPast = global.varB;
	}
}
//if bPast nonzero, add a collision
//if bPast 0, make possible to add collision again
if((bPast != 0) && canRepeat) {
	global.numCollisions++;
	canRepeat = false;
}
if(bPast = 0) {
	canRepeat = true;
}

draw_text(1250, 750, "Number Collisions: " + string(global.numCollisions));