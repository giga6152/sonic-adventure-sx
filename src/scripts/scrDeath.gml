///scrDeath()

if global.checkpointR != 0
{
    room_goto (room);
    x = global.startx;
    y = global.starty;
}
else
    room_restart();
