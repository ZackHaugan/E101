/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_red);
var aPast = 10;
var bPast = 10;
var cPast= 10;
var dPast = 10;

var n = 0.55*global.varB*.5;

//draw_line_width(-1, 380, 1365, 380, 10);
//if(global.display) {
	for(i = 0; i < 80; i++) {
		//17.075 * 80 = 1366 (divides screen into 40 pieces to draw parts of the function)
		draw_line_width(17.075*i, (380-global.varA*31*sin(-40*n+n*i - global.varC)-32*global.varD), 17.075*(i+1), (380-global.varA*31*sin(-40*n+n*(i + 1) - global.varC)-32*global.varD), 10);
		//Detect collision with obj_obstacle1 using collision_line
		var _hit = collision_line(17.075*i, (380-global.varA*31*sin(-40*n+n*i-global.varC)-32*global.varD), 17.075*(i+1), (380-global.varA*31*sin(-40*n + n*(i + 1) - global.varC)-32*global.varD), obj_obstacle_parent, true, false);
		with (_hit) {
			//draw_text(380, 700, "Collision Detected" + string(global.numCollisions)); //used for testing
    		aPast = global.varA;
			bPast = global.varB;
			cPast = global.varC;
			dPast = global.varD;
		}
	}
	//if bPast or mPast nonzero, add a collision
	//if bPast and mPast 10, make possible to add collision again
	if((aPast != 10 || bPast != 10 || cPast != 10 || dPast != 10) && global.canRepeat) {
		//global.numCollisions++;
		//variable to show button to retry set to true
		global.retry = true;
		//freeze sliders until retry is true
		global.canRepeat = false;
		
		global.nextLvlBtn = false;
		
		global.scoreBtn = false;
	}

	if(aPast = 10 && bPast = 10 && cPast = 10 && dPast = 10) {
		global.canRepeat = true;
		//global.scoreBtn = true;
		global.nextLvlBtn = true;
		//global.levelThreeScore = global.numCollisions;
	}
//}

//draw_text(1250, 750, "Number Collisions: " + string(global.numCollisions));