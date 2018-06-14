var Speed = argument0;


//Set speed to the argument passed
//Scope Error (oGhostParent.speed or speed ?)
speed = Speed;

/*
If direction and next direction are different
center the tile and 0 out the speed, set direction
to new direction and skip rest
*/
if (direction != NextDirection )
{
	x = GetCenterGridPos(GridX);
	y = GetCenterGridPos(GridY);
	
	direction = NextDirection;
	speed = 0;
}

else
{
	//Look at next tile ahead in 4 directions
	NextDirectionUp = CanMoveToGridFrom(vk_up, direction);
	NextDirectionDown = CanMoveToGridFrom(vk_down, direction);
	NextDirectionLeft = CanMoveToGridFrom(vk_left, direction);
	NextDirectionRight = CanMoveToGridFrom(vk_right, direction);
	
	//Throw away position that the Ghost currently occupies
	if (direction == 270) NextDirectionUp = false;
	else if (direction == 90) NextDirectionDown = false;
	else if (direction == 180) NextDirectionRight = false;
	else if (direction == 0) NextDirectionLeft = false;
	
	//Make ghost move slower in tunnel
	if (GridY == 17 and (GridX <= 5 || GridX > 22))
	{
		speed = oGameManager.GhostTunnelSpeed;
	}
	
	//Red zone for ghosts to not go up in center lanes
	if ((GridX == 11 || GridX == 13 || GridX ==14 || GridX == 16)
		 and (GridY == 14 || GridY == 25))
	{
		NextDirectionUp = false; 
	}
	
	//Shuffle List (List)
	ds_list_shuffle(WhichDirection);
	
	//
	for (i = 0; i <4; ++i)
	{
		if 	(NextDirectionUp == true
			and ds_list_find_value(WhichDirection, i) == 0) 
		{
			NextDirection = 90;	
			break;
		}
		
		if 	(NextDirectionDown == true
			and ds_list_find_value(WhichDirection, i) == 1) 
		{
			NextDirection = 270;
			break;
		}
		
		if 	(NextDirectionLeft == true
			and ds_list_find_value(WhichDirection, i) == 2) 
		{
			NextDirection = 180;		
			break;
		}
		
		if (NextDirectionRight == true
			and ds_list_find_value(WhichDirection, i) == 3)
		{
			NextDirection = 0;
			break;
		}
		
	}
	
}

