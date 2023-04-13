/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_halign(0);
draw_set_valign(0);
draw_set_color(c_black);

draw_text_transformed(400, 150, "Welcome to Functions and Fishes!", 2, 2, 0);

draw_text(370, 225, "For this game, you will be responsible for creating functions");
draw_text(370, 250, "that do not touch any of the sea creatures in the ocean.");

draw_text(370, 300, "On the right side of the screen you will see a graph");
draw_text(370, 325, "where your functions will be displayed.");

draw_text(370, 375, "On the left side, you will see a general form of a function,");
draw_text(370, 400, "as well as multiple sliders that control the coefficients of the equation.");

draw_text(370, 450, "Your job is to move these sliders to create a function");
draw_text(370, 475, "that does not touch any of the sea creatures.");

draw_text(370, 525, "Your final time and number of collisions will be displayed");
draw_text(370, 550, "upon completion of the game.");

draw_text_transformed(600, 600, "Good Luck!", 2, 2, 0);