///scrCollideSlopesEnemy()

while place_meeting (x, y, objSlopeParent) && vspeed >= 0
{
    y -=1;
    ground = true;
}
while place_meeting (x, y+15, objSlopeParent) && !place_meeting (x, y+1, objSlopeParent) && vspeed >= 0
{
    y += 1;
    ground = true;
}
