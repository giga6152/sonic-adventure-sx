// ==== Prototype ======
// collision_sensor_right( layers, mask )
// ===============================================
// Returns collision to the determinated layers with a sensor located at the right to the mask.

check=argument0;
mask_index=argument1;

if ((check&obstacle_layer) && instance_place(x+(cosine*mask_radius)-(sine*4),y-(sine*mask_radius)-(cosine*4),objWall)!=noone) return true;
if (layer==0 && (check&high_layer) && instance_place(x+(cosine*mask_radius)-(sine*4),y-(sine*mask_radius)-(cosine*4),objHLayer)!=noone) return true;
if (layer==1 && (check&low_layer) && instance_place(x+(cosine*mask_radius)-(sine*4),y-(sine*mask_radius)-(cosine*4),objLLayer)!=noone) return true;
return false;
