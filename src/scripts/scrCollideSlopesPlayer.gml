///scrCollideSlopesPlayer()
while place_meeting (x, y, objSlopeParent) && vspeed >= 0
{
    do y -= 1; until place_meeting (x, y+vspeed+1, objSlopeParent);
    
    vspeed = 0;
    ground = true;
}
