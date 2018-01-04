///scrDrawColours(c1, c2, c3, c4, static)
//Draws the Hyper Sonic colours including whitemasks

var col1, col2, col3, col4, static;

col1 = argument0;
col2 = argument1;
col3 = argument2;
col4 = argument3;
static = argument4;

//Decide on the colored masks
switch colour
{
    case 0:
         colour1 = make_colour_rgb (233, 233, 233);
         colour2 = make_colour_rgb (233, 233, 233);
         colour3 = make_colour_rgb (160, 160, 92);
         colour4 = make_colour_rgb (0, 0, 0);
    break;
    case 1:
         colour1 = make_colour_rgb (240, 213, 240);
         colour2 = make_colour_rgb (224, 192, 224);
         colour3 = make_colour_rgb (192, 160, 192);
         colour4 = make_colour_rgb (154, 128, 154);
    break;
    case 2:
         colour1 = make_colour_rgb (181, 211, 241);
         colour2 = make_colour_rgb (160, 192, 224);
         colour3 = make_colour_rgb (128, 160, 224);
         colour4 = make_colour_rgb (107, 133, 186);
    break;
    case 3:
         colour1 = make_colour_rgb (189, 244, 189);
         colour2 = make_colour_rgb (160, 224, 160);
         colour3 = make_colour_rgb (90, 240, 113);
         colour4 = make_colour_rgb (55, 182, 73);
    break;
    case 4:
         colour1 = make_colour_rgb (252, 252, 161);
         colour2 = make_colour_rgb (224, 224, 128);
         colour3 = make_colour_rgb (224, 192, 64);
         colour4 = make_colour_rgb (188, 161, 54);
    break;
    case 5:
         colour1 = make_colour_rgb (248, 221, 221);
         colour2 = make_colour_rgb (224, 192, 192);
         colour3 = make_colour_rgb (224, 160, 160);
         colour4 = make_colour_rgb (192, 115, 115);
    break;
}

//Draw the sprite colours for Hyper Sonic
draw_sprite_ext (col1, animations_frame, x, y, xdir, 1, animations_angle, colour1, 1);
draw_sprite_ext (col2, animations_frame, x, y, xdir, 1, animations_angle, colour2, 1);
draw_sprite_ext (col3, animations_frame, x, y, xdir, 1, animations_angle, colour3, 1);
draw_sprite_ext (col4, animations_frame, x, y, xdir, 1, animations_angle, colour4, 1);
draw_sprite_ext (static, animations_frame, x, y, xdir, 1, animations_angle, c_white, 1);
