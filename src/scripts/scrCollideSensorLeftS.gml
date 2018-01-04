///scrCollideSensorLeftS(mask)

mask = argument0;

if collision_circle (x-(cosine*mask)-sine*2, y+(sine*mask)-cosine*2, 3, objWall, true, true) return true;
return false;
