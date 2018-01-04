///scrShantaeGetHit()

with objShantae
{
    canGetHit = false;
    alarm[1] = 60;
    alarm[2] = 90;
    global.damaged = true;
    image_alpha = 0.5;
    sprite_index = sprShantaeHit;
    audio_play_sound (sndShantaeHurt, 10, false);
    canMove = false;
    vel = 0;
}
with objShantaeMonkey
{
    canGetHit = false;
    alarm[2] = 60;
    alarm[3] = 90;
    image_alpha = 0.5;
    sprite_index = sprMonkeyHurt;
    audio_play_sound (sndShantaeHurt, 10, false);
    canMove = false;
    vel = 0;
}
with objSkyPlayer
{
    canGetHit = false;
    alarm[0] = 60;
    alarm[1] = 90;
    image_alpha = 0.5;
    sprite_index = sprSkyPlayerHurt;
    audio_play_sound (sndSkyHurt, 10, false);
    canMove = false;
    vel = 0;
}

/*with objShantaeModified
{
    action = 6;
    canGetHit = false;
    alarm[1] = 60;
    alarm[2] = 90;
    audio_play_sound (sndShantaeHurt, 10, false);
}
