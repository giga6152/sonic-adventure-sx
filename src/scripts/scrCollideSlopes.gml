///scrCollideSlopes()
while place_meeting (x, y, objSlopeParent) && vspeed >= 0
{
    do y -= 1 until place_meeting (x, y+1, objSlopeParent);
    ground = true;
}
while place_meeting (x, y+maxSpeed+1, objSlopeParent) && !place_meeting (x, y+1, objSlopeParent) && vspeed >= 0
{
    do y += 1 until place_meeting (x, y+1, objSlopeParent);
    ground = true;
}

if ground == true && !place_meeting (x, y+1, objSolid)
{
    if place_meeting (x, y+1, objSlopeL)
        drawAngle = -23;
    else if place_meeting (x, y+1, objSlopeR)
        drawAngle = 23;
}
else
    drawAngle = 0;
