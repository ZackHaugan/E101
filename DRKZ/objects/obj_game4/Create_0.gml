/// @description Insert description here
// You can write your code in this editor

//draw_text(300, 300, "Final Score: ");

var lead = global.minutes * 100;
lead += global.seconds;

if(global.len != 0) {
	for ( i = 0; i < 5; i++ ) {
		if( lead <= global.leaderboard[i] ) {
			for ( n = 4; n > i; n-- ) {
				if ( n > 4 ) {
					n = 4;
				}
				global.leaderboard[n] = global.leaderboard[n-1];
			}
			global.leaderboard[i] = lead;
			if (global.len < 5 ) {
				global.len++;
			}
			i = 5;
		}
	}
}

if(global.len = 0) {
	global.leaderboard[global.len] = lead;
	global.len++;
}

show_debug_message("Score: " + string(lead));
show_debug_message("Len: " + string(global.len));