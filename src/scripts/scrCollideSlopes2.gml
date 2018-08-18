///scrCollideSlopes2()
while place_meeting (x, y, objSlopeParent) && yvel >= 0
{
    do y -= 1; until place_meeting (x, y+yvel+1, objSlopeParent);
    ground = true;
    yfr = 0;
}
while place_meeting (x, y, objJumpThrough) && yvel >= 0
{
    do y -= 1; until place_meeting (x, y+yvel+1, objJumpThrough);
    ground = true;
    yfr = 0;
}
