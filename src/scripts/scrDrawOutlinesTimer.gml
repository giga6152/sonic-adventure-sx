///scrDrawOutlinesTimer (x, y, string, mods, innercol, outercol, width)

var _x = argument0, _y = argument1, tx = argument2, mods = global.time div 10 mod 60, innercol = argument4, outercol = argument5, width = argument6, marker = argument7;

draw_set_color (innercol);
draw_set_font (fntFont);
draw_text (_x-width, _y, tx);
draw_text (_x+width, _y, tx);
draw_text (_x, _y-width, tx);
draw_text (_x, _y+width, tx);

draw_set_color (outercol);
draw_set_font (fntFont);
draw_text (_x, _y, tx);
