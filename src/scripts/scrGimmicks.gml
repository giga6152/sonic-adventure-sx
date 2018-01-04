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
