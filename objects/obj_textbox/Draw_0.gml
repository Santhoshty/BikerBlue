/// @description Insert description here
// You can write your code in this editor
//draw textbox
draw_sprite(box, 0, (88 + 40), (126 - 100));

//draw portrait frame
draw_sprite(frame, 0, (22 + 40), (126 - 100));

//draw portrait

//draw namebox
draw_sprite(namebox, 0, (22 + 40), (115 - 100));

//draw text

//set font
draw_set_font(font);

//draw name
var c = name_text_col;
draw_set_halign(fa_center); draw_set_valign(fa_middle);
draw_text_color((22 + 40 + 34), (115 - 100 + 7), name, c,c,c,c, 1);
draw_set_halign(fa_left); draw_set_valign(fa_top);

//draw text
if (!pause && counter < str_len) {
	counter++;
	if (counter mod 4 == 0) {
	audio_play_sound(voice, 10, false);}
	switch(string_char_at(text_wrapped, counter)) {
		case ",": pause = true; alarm[1] = 15; break;
		case ".": 
		case "?": 
		case "!": pause = true; alarm[1] = 25; break;
	}
	
}

var substr = string_copy(text_wrapped, 1, counter);

c = text_col;
draw_text_color((88 + 40 + 9), (126 - 100 + 7), substr, c, c, c, c, 1);