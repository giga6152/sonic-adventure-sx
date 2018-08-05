///scrInsideView
if scrGetXCentre() >= view_xview[0]-16 && scrGetXCentre() <= view_xview[0]+view_wview[0]+32
&& scrGetYCentre() >= view_yview[0]-16 && scrGetYCentre() <= view_yview[0]+view_hview[0]+32
    return true;
else
    return false;
