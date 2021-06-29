/// @description Insert description here
// You can write your code in this editor

//object dependencies
input = instance_create_layer(0, 0, "Text", obj_input);

//sprite library
box = spr_textbox;
frame = spr_portraitframe;
portrait = spr_portraits;
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