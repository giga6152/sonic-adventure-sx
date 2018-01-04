///scrDrawColours(primary, secondary, static)
//Draws the Hyper Sonic colours including whitemasks

var primary, secondary, static;

primary = argument0;
secondary = argument1;
static = argument2;

//Decide on the colored masks
switch colour
{
    case 0:
         primary = make_colour_rgb (224, 192, 224);
         secondary = make_colour_rgb (199, 146, 203);
    break;
    case 1:
         primary = make_colour_rgb (224, 224, 224);
         secondary = make_colour_rgb (224, 224, 224);
    break;
    case 2:
         primary = make_colour_rgb (160, 192, 224);
         secondary = make_colour_rgb (108, 166, 208);
    break;
    case 3:
         primary = make_colour_rgb (224, 224, 224);
         secondary = make_colour_rgb (224, 224, 224);
    break;
    case 4:
         primary = make_colour_rgb (160, 224, 160);
         secondary = make_colour_rgb (0, 224, 32);
    break;
    case 5:
         primary = make_colour_rgb (224, 224, 224);
         secondary = make_colour_rgb (224, 224, 224);
    break;
    case 6:
         primary = make_colour_rgb (224, 224, 128);
         secondary = make_colour_rgb (224, 192, 64);
    break;
    case 7:
         primary = make_colour_rgb (224, 224, 224);
         secondary = make_colour_rgb (224, 224, 224);
    break;
    case 8:
         primary = make_colour_rgb (224, 192, 192);
         secondary = make_colour_rgb (224, 160, 160);
    break;
    case 9:
         primary = make_colour_rgb (224, 224, 224);
         secondary = make_colour_rgb (224, 224, 224);
    break;
}

//Draw the sprite colours for Hyper Sonic
draw_sprite_ext (col1, animations_frame, x, y, xdir, 1, animations_angle, colour1, 1);
draw_sprite_ext (col2, animations_frame, x, y, xdir, 1, animations_angle, colour2, 1);
draw_sprite_ext (col3, animations_frame, x, y, xdir, 1, animations_angle, primary, 1);
draw_sprite_ext (col4, animations_frame, x, y, xdir, 1, animations_angle, secondary, 1);
draw_sprite_ext (static, animations_frame, x, y, xdir, 1, animations_angle, c_white, 1);
