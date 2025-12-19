right_key = keyboard_check(vk_right);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
left_key = keyboard_check(vk_left);





xspd = (right_key - left_key) * move_spd;

yspd = (down_key - up_key) * move_spd;

if place_meeting(x+xspd, y, Wall){
xspd = 0;

}

if place_meeting(x, y+yspd, Wall){
	yspd = 0;

}

if xspd > 0 {
	sprite_index = splayerRight;
} else if xspd < 0 {
	sprite_index = splayerLeft;
} else if yspd > 0 {
	sprite_index = splayerDown;
} else if yspd < 0 {
	sprite_index = splayerUp;
}

if (xspd != 0 or yspd != 0) {
	image_speed = 1;
} else {
	image_speed = 0;
	image_index = 0;
}




x += xspd;
y += yspd;

