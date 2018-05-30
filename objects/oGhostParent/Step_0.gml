if (Mode != oGameManager.Mode && Mode != GhostMode.FRIGHT
	&& Mode != GhostMode.EYESRETURN)
{
	Mode = oGameManager.Mode;	
}

switch(Mode)
{
	case GhostMode.PLAYERREADY:
		image_alpha = 0;
		break;
		
	case GhostMode.GAMESTART:
		image_alpha = 1;
		image_speed = 0;
		x = StartingX;
		y = StartingY;
		break;
		
	case GhostMode.SCATTER:
	case GhostMode.CHASE:
	
		CheckForPlayerKill();
	
		move_wrap(true, false, oGameManager.GridSize);

		GridX = (GetGridNum(x));
		GridY = (GetGridNum(y));

		GridX = clamp(GridX, 0, 27);
		GridY = clamp(GridY,0, 35);

		//Get direction
		GhostUpdateHorVer();
	
		GhostMovement();
	
		GhostDirection();
	
		break;
		
	case GhostMode.FRIGHT:
			move_wrap(true, false, oGameManager.GridSize);

		GridX = (GetGridNum(x));
		GridY = (GetGridNum(y));

		GridX = clamp(GridX, 0, 27);
		GridY = clamp(GridY,0, 35);
		
		//Get direction
		GhostUpdateHorVer();
		
		break;
		
	
	default:
		speed = 0;
		
		break;
		
}






