///scrHurtPlayer()
with objSonic
{
    canHit = false;
    audio_play_sound (sndSonicOugh, 10, false);
    image_alpha = 0.5;
    sprite_index = sprSonicHit;
    canSpriteChange = false;
    canMove = false;
    vspeed = -5;
    global.vel = image_xscale * -2.5;
    ground = false;
    alarm[0] = 90;
    
    if global.shield = 0
    {
        audio_play_sound (sndRingLose, 10, false);
        var t = 0, angle = 101.25, n = false, spd = 4;
        
        while t < global.rings && instance_number (objRingLoss) < 32
        {
            var ringID = instance_create (x, y, objRingLoss);
                ringID.vspeed = -sin (angle) * spd;
                ringID.hspeed = cos (angle) * spd;
                  
            if n = true
            {
                ringID.hspeed *= -1;
                angle += 22.5;
            }
            n = !n;
            t += 1;
            if t = 16
            {
                spd = 2;
                angle = 101.25;
            }
        }
        global.rings = 0;
    }
    else
        global.shield = 0;
}
