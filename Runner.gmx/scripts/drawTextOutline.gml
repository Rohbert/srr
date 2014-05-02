/*Draws a black outline around the text given at position given
argument0: x position of text
argument1: y position of text
argument2: how thick the outline is
argument3: the text shown.

*/

draw_set_color(c_black);
for(i=argument0-argument2;i<=argument0+argument2;i+=1){
    for(n=argument1-argument2;n<=argument1+argument2;n+=1){
        draw_text(i,n,argument3);
        }
    }
draw_set_color(c_white);
draw_text(argument0,argument1,argument3);

