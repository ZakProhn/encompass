//checks to see if enemy is dead
if(curr_health <= 0)
{
instance_destroy();
}

//moves towards player
if(instance_exists(objplayer))
{
move_towards_point(objplayer.x+16, objplayer.y+16, enemy_speed);
}
else
{
speed = 0;
}