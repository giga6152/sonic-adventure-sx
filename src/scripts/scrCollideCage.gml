///scrCollideCage()
while place_meeting (x, y, objCage) && vspeed >= 0
{
    do y -= 1; until place_meeting (x, y+vspeed+55, objCage);
    ground = true;
}
