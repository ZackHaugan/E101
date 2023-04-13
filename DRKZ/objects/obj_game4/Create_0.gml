/// @description Insert description here
// You can write your code in this editor

//draw_text(300, 300, "Final Score: ");

var lead = global.minutes * 100;
lead += global.seconds;

show_debug_message(string(lead));
	
for ( i = 0; i < 5; i++ ) {
	if( lead <= global.leaderboard[i] ) {
		for ( n = i; n < 4; n++ ) {
			global.leaderboard[n+1] = global.leaderboard[n];
		}
		global.leaderboard[i] = lead;
		i = 5;
	}
}