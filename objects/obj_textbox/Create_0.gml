/// @description Insert description here
// You can write your code in this editor

//object dependencies

//sprite library
box = spr_textbox;
frame = spr_bikerBlueP;
portrait = spr_bikerBlueP;
namebox = spr_namebox;

counter = 0;
pause = false;
portrait_index = 0;

//text
text[0]= "this, is ,a, test !strgsssssssssing. this is a tesgssssssst, string, this is a test";
text[1] = "Blah Blah Blag";
page = 0;
name = "Ed Nial";
voice = snd_voice1;

//text color and font
text_col = $592B00;
name_text_col = $592B00;
font = Onyx;

event_perform(ev_other, ev_user1);