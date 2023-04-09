/// @description Insert description here
// You can write your code in this editor

var collisions = " collisions";
if ( global.levelOneScore = 1 ) {
	collisions = " collision";
}

draw_text_transformed(700, 100, "Final Score:", 4, 4, 0);
draw_text_transformed(700, 200, "Level 1: " + string(global.levelOneScore) + collisions, 2, 2, 0);
collisions = " collisions";
if ( global.levelTwoScore = 1 ) {
	collisions = " collision";
}
draw_text_transformed(700, 300, "Level 2: " + string(global.levelTwoScore) + collisions, 2, 2, 0);
collisions = " collisions";
if ( global.levelThreeScore = 1 ) {
	collisions = " collision";
}
draw_text_transformed(700, 400, "Level 3: " + string(global.levelThreeScore) + collisions, 2, 2, 0);
var totalCollisions = global.levelOneScore + global.levelTwoScore + global.levelThreeScore;
draw_text_transformed(700, 500, "Total Number of Collisions: " + string(totalCollisions), 3, 3, 0);

//draw_text(195, 585, "Final Score: ");