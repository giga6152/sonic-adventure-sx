///scrDrawOutlines(x, y, string, innercol, outercol, width)

var _x = argument0;
_y = argument1;
txt = argument2;
innercol = argument3;
outercol = argument4;
width = argument5;

draw_set_colour (innercol);
draw_text (_x-width, _y, txt);
draw_text (_x+width, _y, txt);
draw_text (_x, _y-width, txt);
draw_text (_x, _y+width, txt);

draw_set_colour (outercol);
draw_text (_x, _y, txt);
