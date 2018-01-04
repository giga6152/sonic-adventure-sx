// ==== Prototype ======
// collision_sensor_top( layers, mask )
// ===============================================
// Returns collision to the determinated layers with a sensor located at the top of the mask.

check=argument0;
mask_index=argument1;

if ((check&obstacle_layer) && instance_place(x-(sine*mask_radius),y-(cosine*mask_radius),objWall)!=noone) return true;
if (layer==0 && (check&high_layer) && instance_place(x-(sine*mask_radius),y-(cosine*mask_radius),objHLayer)!=noone) return true;
if (layer==1 && (check&low_layer) && instance_place(x-(sine*mask_radius),y-(cosine*mask_radius),objLLayer)!=noone) return true;
return false;
