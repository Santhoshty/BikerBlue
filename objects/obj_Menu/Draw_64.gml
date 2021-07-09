/// @description Insert description here
// You can write your code in this editor
var gwidth = global.view_width, gheight = global.gameHeight;

var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);
var y_buffer = 16, x_buffer = 8; 
var start_y = (gheight/2) - ((((ds_height-1)/2) * y_buffer)), start_x = (gwidth - 40)/2;
var c = dark_blue;

draw_set_font(font);

//Draw Elements on Left Side
draw_set_valign(fa_middle);
draw_set_halign(fa_right);

var ltx = start_x - x_buffer, lty, xo;

var yy = 0; repeat (ds_height) {
	lty = start_y + (yy*y_buffer);
	c = light_cyan;
	xo = 0;
	
	if (yy == menu_option[page]) {
		c = pink;
		xo = -(x_buffer/2);
	}
	
	draw_text_color(ltx + xo, lty, ds_grid[# 0, yy], c, c, c, c, 1);
	yy++;	
}

//Draw Dividing Line
draw_line(start_x, start_y - y_buffer, start_x, lty + y_buffer);

//Draw Elements on Right Side

draw_set_halign(fa_left);

var rtx = start_x + x_buffer, rty;

yy = 0; repeat(ds_height) {
	
	rty = start_y + (yy * y_buffer);
	
	switch(ds_grid[# 1, yy]) {
		case MENU_ELEMENT_TYPE.SHIFT:
			var current_val = ds_grid[# 3, yy];
			var current_array = ds_grid[# 4, yy];
			var left_shift = "<< ";
			var right_shift = " >>";
			
			if(current_val == 0) {left_shift = "";}
			if(current_val == array_length_1d(ds_grid[# 4, yy]) - 1) {right_shift = "";}
			
			c = light_cyan;
			
			if(inputting && yy == menu_option[page]) {c = pink;}
			draw_text_color(rtx, rty, left_shift + current_array[current_val] + right_shift, c, c, c, c, 1);
			
		break;
		
		case MENU_ELEMENT_TYPE.SLIDER:
			var len = 64;
			var current_val = ds_grid[# 3, yy];
			var current_array = ds_grid[# 4, yy];
			var circle_pos = ((current_val - current_array[0]) / (current_array[1] - current_array[0]));
			c = light_cyan;
			
			draw_line_width_color(rtx, rty, rtx + len, rty, 2, c, c);
			if(inputting && yy == menu_option[page]) {c = pink;}
			draw_circle_color(rtx + (circle_pos * len), rty, 4, light_cyan, light_cyan, false);
			draw_text_color(rtx + (len* 1.2), rty, string(floor(circle_pos * 100)) + "%", c, c, c, c, 1);
			
		break;
		
		case MENU_ELEMENT_TYPE.TOGGLE:
			var current_val = ds_grid[# 3, yy];
			var c1, c2;
			c = light_cyan;
			
			if(inputting && yy == menu_option[page]) {c = pink;}
			
			if (current_val == 0)	{c1 = c; c2 = dark_blue;}
			else					{c1 = dark_blue; c2 = c;}
			
			draw_text_color(rtx, rty, "ON", c1, c1, c1, c1, 1);
			draw_text_color(rtx + 32, rty, "OFF", c2, c2, c2, c2, 1);
		break;
		
		case MENU_ELEMENT_TYPE.INPUT:
			var current_val = ds_grid[# 3, yy];
			var string_val;
			
			switch(current_val) {
				case vk_up:		string_val = "UP KEY"; break;
				case vk_right:	string_val = "RIGHT KEY"; break;
				case vk_left:	string_val = "LEFT KEY"; break;
				case vk_down:	string_val = "DOWN KEY"; break;
				case vk_shift:	string_val = "SHIFT KEY"; break;
				case vk_tab:	string_val = "TAB KEY";		break;
				case vk_space:	string_val = "SPACE KEY"; break;
				default:		string_val = chr(current_val); break;
			}
				c = light_cyan;
				if(inputting && yy == menu_option[page]) {c = pink;}
				draw_text_color(rtx, rty, string_val, c, c, c, c, 1);				
		break;
	}
	
	yy++;
	
}

draw_set_valign(fa_top);