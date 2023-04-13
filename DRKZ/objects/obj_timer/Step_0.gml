/// @description Insert description here
// You can write your code in this editor

if (room_next(room) != -1) {
global.seconds += (delta_time*.000000017)*room_speed;

if (global.seconds >= 55.5)
{
    global.seconds = 0;
    global.minutes += 1;
}
}