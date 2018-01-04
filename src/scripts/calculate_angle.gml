///calculate_angle(horizontal_space, layers)

// ==== Prototype ======
// calculate_angle( horizontal_space, layers )
// ===============================================
// Returns the angle of the surface below the mask depending on actual angle.
// Basically, two points search for the surface and when they found it, calculates the angle
// between them and that's the angle surface.

angle=round(argument0/8)*8;
hspace=argument1;
check=argument2;

cosine=cos(degtorad(angle));
sine=sin(degtorad(angle));

x1=round(x-( cosine * hspace ));
y1=round(y+( sine * hspace ));

x2=round(x+( cosine * hspace ));
y2=round(y-( sine * hspace ));

done1=0;
done2=0;

i=28;
mask_index=MaskSmall;

while(i) {
    if (!done1) {
        if ((check&obstacle_layer) && instance_place(x1,y1,objWall)!=noone) done1=1;
        if (layer==0 && (check&high_layer) && instance_place(x1,y1,objHLayer)!=noone) done1=1;
        if (layer==1 && (check&low_layer) && instance_place(x1,y1,objLLayer)!=noone) done1=1;
        x1+=sine;
        y1+=cosine;
    }
    if (!done2) {
        if ((check&obstacle_layer) && instance_place(x2,y2,objWall)!=noone) done2=1;
        if (layer==0 && (check&high_layer) && instance_place(x2,y2,objHLayer)!=noone) done2=1;
        if (layer==1 && (check&low_layer) && instance_place(x2,y2,objLLayer)!=noone) done2=1;
        x2+=sine;
        y2+=cosine;
    }
    if (done1 && done2) break;
    i-=1;
}

return round( point_direction(x1,y1,x2,y2));
