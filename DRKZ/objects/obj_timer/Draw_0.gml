/// @description Insert description here
// You can write your code in this editor

var Smins = string_format(global.minutes, 2, 0);
var Ssecs = string_format(global.seconds, 2, 0);

if ( room_next(room) != -1 && room_previous(room) != -1) {
draw_text(190, 750, "Time: " + Smins + ":" + Ssecs);
}

if ( room_next(room) = -1 ) {
	
	draw_text(100, 100, "Total Time: " + Smins + ":" + Ssecs );
	
	draw_text(100, 200, "Leader Board:");
	var yVal = 225;
	for( i = 0; i < 5; i++ ) {
		if(global.leaderboard[i] != 9999) {
			var Lmins = string_format(floor(global.leaderboard[i] / 100), 2, 0);
			var Lsecs = string_format(global.leaderboard[i] % 100, 2, 0);
			draw_text(90, yVal + 25*i, Lmins + ":" + Lsecs);
		}
	}
}