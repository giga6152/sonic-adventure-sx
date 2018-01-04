// ==== Prototype ======
// collision_sensor_left_line( layers )
// ===============================================
// Returns collision to the determinated layers within the delimeters lines

check=argument0;
sprite_index=MaskLines;

image_index = round(angle/8);

mask_index = MaskLines;

if ((check&obstacle_layer) && instance_place(x-(cosine*8)+(sine*mask_radius),y+(sine*8)+(cosine*mask_radius),objWall)!=noone) return true;
if (layer==0 && (check&high_layer) && instance_place(x-(cosine*8)+(sine*mask_radius),y+(sine*8)+(cosine*mask_radius),objHLayer)!=noone) return true;
if (layer==1 && (check&low_layer) && instance_place(x-(cosine*8)+(sine*mask_radius),y+(sine*8)+(cosine*mask_radius),objLLayer)!=noone) return true;
return false;
