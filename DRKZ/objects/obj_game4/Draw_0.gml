/// @description Insert description here
// You can write your code in this editor

var collisions = " collisions";
if ( global.levelOneScore = 1 ) {
	collisions = " collision";
}

draw_text_transformed(700, 50, "Final Score:", 4, 4, 0);
draw_text_transformed(700, 150, "Level 1: " + string(global.levelOneScore) + collisions, 2, 2, 0);
collisions = " collisions";
if ( global.levelOne_TwoScore = 1 ) {
	collisions = " collision";
}
draw_text_transformed(700, 250, "Level 2: " + string(global.levelOne_TwoScore) + collisions, 2, 2, 0);
collisions = " collisions";
if ( global.levelTwoScore = 1 ) {
	collisions = " collision";
}
draw_text_transformed(700, 350, "Level 3: " + string(global.levelTwoScore) + collisions, 2, 2, 0);
collisions = " collisions";
if ( global.levelThreeScore = 1 ) {
	collisions = " collision";
}
draw_text_transformed(700, 450, "Level 4: " + string(global.levelThreeScore) + collisions, 2, 2, 0);
var totalCollisions = global.levelOneScore + global.levelOne_TwoScore + global.levelTwoScore + global.levelThreeScore;
draw_text_transformed(700, 550, "Total Number of Collisions: " + string(totalCollisions), 3, 3, 0);

//draw_text(195, 585, "Final Score: ");