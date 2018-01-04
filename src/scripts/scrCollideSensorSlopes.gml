// ==== Prototype ======
// collision_sensor_slopes( layers, mask )
// ===============================================
// Returns collision to the determinated layers for use on slope detection.

check=argument0;
mask_index=argument1;

if ((check&obstacle_layer) && instance_place(x+(sine*(mask_radius+8)),y+(cosine*(mask_radius+8)),objWall)!=noone) return true;
if (layer==0 && (check&high_layer) && instance_place(x+(sine*(mask_radius+8)),y+(cosine*(mask_radius+8)),objHLayer)!=noone) return true;
if (layer==1 && (check&low_layer) && instance_place(x+(sine*(mask_radius+8)),y+(cosine*(mask_radius+8)),objLLayer)!=noone) return true;
return false;
