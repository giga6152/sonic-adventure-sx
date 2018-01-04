///scrCollideSlopes2()
while place_meeting (x, y, objSlopeParent) && vspeed >= 0
{
    do y -= 1; until place_meeting (x, y+vspeed+1, objSlopeParent);
    ground = true;
    gravity = 0;
}
while place_meeting (x, y, objJumpThrough) && vspeed >= 0
{
    do y -= 1; until place_meeting (x, y+vspeed+1, objJumpThrough);
    ground = true;
    gravity = 0;
}
