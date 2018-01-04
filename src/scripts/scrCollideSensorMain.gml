// ==== Prototype ======
// collision_sensor_main( layers )
// ===============================================
// Returns collision to the determinated layers with main mask.

check=argument0;
mask_index = MaskMain;

if ((check&obstacle_layer)==obstacle_layer && instance_place(x,y,objWall)!=noone) return true;
if (layer==0 && (check&high_layer) && instance_place(x,y,objHLayer)!=noone) return true;
if (layer==1 && (check&low_layer) && instance_place(x,y,objLLayer)!=noone) return true;
return false;
