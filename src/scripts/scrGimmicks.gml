///scrGimmicks()

//Trick ramps (must be at a certain speed first)
if ground
{
    if place_meeting (x, y, objRampRight) && hsp >= 8
    {
        action = 6;
        vsp = -9.68;
        hsp = 15.68;
        enable = false;
        ground = false;
        xdir = 1;
        audio_play_sound (sndDash, 10, false);
    }
    else if place_meeting (x, y, objRampLeft) && hsp <= -8
    {
        action = 6;
        vsp = -9.68
        hsp = -15.68;
        enable = false;
        xdir = -1;
        ground = false;
        audio_play_sound (sndDash, 10, false);
    }
}

//Skydiving
if vsp >= 0 && place_meeting (x, y, objSkydive) && action != 9.5
{
    action = 18;
}

if action == 18
{
    vspl = 3.75;
    vsp = 3.75;
}
else
{
    vspl = 13;
}

if action == 18 && !place_meeting (x, y, objSkydive)
{
    action = 6;
}
if action == animationTrick
{
    vsp = 0;
    vspl = 0;
}

//Corkscrew
if action=20 or action=21
{
    if !place_meeting(x,y,objCorkscrew)
        {action=0 enable=1}
}

//Disallow all movement if the player is talking
if instance_exists (objTalkingText)
{
    hsp = 0;
    vsp = 0;
}
else
{

}

//Jumping through platforms

//This allows the player to jump through platforms from the bottom, and land on the top.
/*This is connected to the low layer, so we need to set the layers accordingly depending on
the player's position*/

if collision_circle (x, y-30, 30, objJumpThrough, 1, 1) && vsp < 0
{
    layer = 0;
}

if collision_circle (x, y+30, 30, objJumpThrough, 1, 1) && !collision_circle (x, y, 13, objJumpThrough, 1, 1) && vsp > 0
{
    layer = 1;
}

//Trigger stepping SFX
//Play certain sounds depending on the surface that the player is walking on

collision_surface_normal = collision_circle (x, y+10, 10, (objSurfaceN /*or (objSurfaceNH && layer == 0) or (objSurfaceNL && layer == 1)*/), true, true);
collision_surface_grass = collision_circle (x, y+10, 10, (objSurfaceG /*or (objSurfaceGH && layer == 0) or (objSurfaceGL && layer == 1)*/), true, true);
collision_surface_wood = collision_circle (x, y+10, 10, (objSurfaceW /*or (objSurfaceWH && layer == 0) or (objSurfaceWL && layer == 1)*/), true, true);
collision_surface_metal = collision_circle (x, y+10, 10, (objSurfaceM /*or (objSurfaceMH && layer == 0) or (objSurfaceML && layer == 1)*/), true, true);

collision_surface_normal_l = collision_circle (x, y+10, 10, (objSurfaceNL /*or (objSurfaceNH && layer == 0) or (objSurfaceNL && layer == 1)*/), true, true) && layer == 1;
collision_surface_grass_l = collision_circle (x, y+10, 10, (objSurfaceGL /*or (objSurfaceGH && layer == 0) or (objSurfaceGL && layer == 1)*/), true, true) && layer == 1;
collision_surface_wood_l = collision_circle (x, y+10, 10, (objSurfaceWL /*or (objSurfaceWH && layer == 0) or (objSurfaceWL && layer == 1)*/), true, true) && layer == 1;
collision_surface_metal_l = collision_circle (x, y+10, 10, (objSurfaceML /*or (objSurfaceMH && layer == 0) or (objSurfaceML && layer == 1)*/), true, true) && layer == 1;

collision_surface_normal_h = collision_circle (x, y+10, 10, (objSurfaceNH /*or (objSurfaceNH && layer == 0) or (objSurfaceNL && layer == 1)*/), true, true) && layer == 0;
collision_surface_grass_h = collision_circle (x, y+10, 10, (objSurfaceGH /*or (objSurfaceGH && layer == 0) or (objSurfaceGL && layer == 1)*/), true, true) && layer == 0;
collision_surface_wood_h = collision_circle (x, y+10, 10, (objSurfaceWH /*or (objSurfaceWH && layer == 0) or (objSurfaceWL && layer == 1)*/), true, true) && layer == 0;
collision_surface_metal_h = collision_circle (x, y+10, 10, (objSurfaceMH /*or (objSurfaceMH && layer == 0) or (objSurfaceML && layer == 1)*/), true, true) && layer == 0;

/*if collision_surface_normal or collision_surface_normal_l or collision_surface_normal_h //If the player is on a normal surface
{
    soundstep = sndStepNormal;
    soundland = sndLandNormal;
}*/
if collision_surface_grass or collision_surface_grass_l or collision_surface_grass_h //If the player is on grass
{
    soundstep = sndStepGrass;
    soundland = sndLandGrass;
}
else if collision_surface_wood or collision_surface_wood_l or collision_surface_wood_h //If the player is on wood
{
    soundstep = sndStepWood;
    soundland = sndLandWood;
}
else if collision_surface_metal or collision_surface_metal_l or collision_surface_metal_h //If the player is on metal
{
    soundstep = sndStepMetal;
    soundland = sndLandGrass;
}
else if !collision_circle (x, y+10, 30, objWaterSurface, false, true) //If neither of these are true, act as if it were a normal surface
{
    soundstep = sndStepNormal;
    soundland = sndLandNormal;
}
