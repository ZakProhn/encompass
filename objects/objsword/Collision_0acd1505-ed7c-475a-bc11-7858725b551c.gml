//decrements enemy health and sets can_hit bool to false
if(can_hit)
{
	with(other){
		curr_health--;
	}
}
can_hit = false;