///scrOptimize()

if room != rmZ1_B
{
    instance_deactivate_region (view_xview[0]-32, view_yview[0]-32, view_wview[0]+64, view_hview[0]+64, false, true);
    instance_activate_region (view_xview[0]-16, view_yview[0]-16, view_wview[0]+32, view_hview[0]+32, true);
}

instance_activate_object (objGamepad);
instance_activate_object (objCamera);
instance_activate_object (objButton);
instance_activate_object (objButton2);
instance_activate_object (objWaterSurface);
instance_activate_object (prtMoving);
