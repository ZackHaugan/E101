/// @description Insert description here
// You can write your code in this editor
if ( global.nextLvlBtn) {
	draw_self();

	//draw_set_halign(fa_center);
	//draw_set_valign(fa_middle);
	draw_text(195, 585, "Next Level");
	//global.retry = false;
}

if ( global.scoreBtn ) {
	draw_self();
	draw_text(195, 585, " View Score" );
	//global.display = false;
	//global.retry = false;
}