/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_red);
var bPast = 0;
var mPast = 0;
//draw_line_width(-1, 380, 1365, 380, 10);
if(global.display) {
	for(i = 0; i < 40; i++) {
		//34.15 * 40 = 1366 (divides screen into 40 pieces to draw parts of the function)
		draw_line_width(34.15*i, (380-18*(global.varM*(i-20)))-32*global.varB, 34.15*(i+1), (380-18*((i-20)+1)*global.varM) - 32*global.varB, 10);
		//Detect collision with obj_obstacle1 using collision_line
		var _hit = collision_line(34.15*i, (380-18*(global.varM*(i-20)))-32*global.varB, 34.15*(i+1), (380-18*((i-20)+1)*global.varM) - 32*global.varB, obj_obstacle1, true, false);
		with (_hit) {
			//draw_text(380, 700, "Collision Detected" + string(global.numCollisions)); //used for testing
    		bPast = global.varB;
			mPast = global.varM
		}
	}
	//if bPast or mPast nonzero, add a collision
	//if bPast and mPast 0, make possible to add collision again
	if((bPast != 0 || mPast != 0) && global.canRepeat) {
		global.numCollisions++;
		//variable to show button to retry set to true
		global.retry = true;
		//freeze sliders until retry is true
		global.canRepeat = false;
		
		global.nextLvlBtn = false;
	}
	//else show button for progressing to next level
	/*else {
		global.nextLvlBtn = true;
	}*/

	if(bPast = 0 && mPast = 0) {
		global.canRepeat = true;
		global.nextLvlBtn = true;
	}
}

draw_text(1250, 750, "Number Collisions: " + string(global.numCollisions));