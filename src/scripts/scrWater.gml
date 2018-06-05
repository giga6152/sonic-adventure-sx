///scrWater()

//All water properties, including running on top of the water and drowning.
if instance_exists (objWaterSurface)
{
    if collision_circle (x, y+10, 30, objWaterSurface, false, true)
    {
        if abs(hsp) < 10 or ground == false
            layer = 1;
        else
        {
            layer = 0;
            
            if !audio_is_playing (sndSplash)
                audio_play_sound (sndSplash, 10, false);
        }
    }
    if y > objWaterSurface.y
        layer = 1;
}

if instance_exists (objWaterSurface)
{
    if y >= objWaterSurface.y
    {
        vfr = 0.15;
        
        if vsp > 4
            vsp = 4;
        if hsp > 7
            hsp = 7;
        if hsp < -7
            hsp = -7;
    }
    else
    {
        vfr = 0.3;
        
        if vsp > vspl
            vsp = vspl;
        if (hsp>hspl)     hsp = hspl;
        if (hsp<-hspl)    hsp = -hspl;
    }
    
    if y >= objWaterSurface.y && global.superstate < 1
        drown -= 1;
    else
        drown = 1500;
        
    if drown <= 650
    {
        if !instance_exists (objDrownTimer)
            instance_create (x, y-50, objDrownTimer);
    }
    if drown <= 0
    {
        if instance_exists (objSonicModified) && !instance_exists (objKnuckles) && !instance_exists (objShadow) && !instance_exists (objSilver) && !instance_exists (objTails) && !instance_exists (objAmy)
            instance_change (objSonicDie, true);
        else if instance_exists (objKnuckles)
            instance_change (objKnucklesDie, true);
        else if instance_exists (objShadow)
            instance_change (objShadowDie, true);
        else if instance_exists (objSilver)
            instance_change (objSilverDie, true);
        else if instance_exists (objTails)
            instance_change (objTailsDie, true);
        else if instance_exists (objAmy)
            instance_change (objAmyDie, true);
    }
}
