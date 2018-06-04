/*if (Mode != oGameManager.Mode && Mode != GameMode.FRIGHT
	&& Mode != GameMode.EYESRETURN && Mode != GameMode.RETURNTOSAFEZONE
	and Mode != GameMode.SAFEZONE and Mode != GameMode.LEAVINGSAFEZONE)
{
	Mode = oGameManager.Mode;	
}*/

//Every ghost shares first target for first turn
IsInGame = Mode == GhostMode.SCATTER || Mode == GhostMode.CHASE 
				|| Mode == GhostMode.FIRSTTURN;

//Is Frightened is the individual indication on the ghost for being edible
IsEdible = Mode == GhostMode.FRIGHT || Mode == GhostMode.FRIGHTFLASH;

IsEyeballs = Mode == GhostMode.EYESRETURN || Mode ==GhostMode.EYESRETURNABOVEHOME
			 || Mode == GhostMode.EYESRETURNINTOHOME;

IsSafeZone = Mode == GhostMode.SAFEZONE || Mode == GhostMode.GOTOHOMEYCENTER  
		   || Mode == GhostMode.GOTOHOMECENTER || Mode == GhostMode.LEAVEHOME;

GetGhostTarget();

UpdateGridGhost();

if (oGameManager.LastGameMode != oGameManager.Mode)
{
	
	ModeSwitchLogic();
	
}

switch (Mode)
{
	case GhostMode.PLAYERREADY:
	case GhostMode.PLAYERDEATHANIM:
	case GhostMode.NEXTLEVELFLASH:
		image_alpha = 0;
	break;
		
	case GhostMode.PREGAME:
	case GhostMode.READY:
		image_alpha = 1;
		image_speed = 0;
		x = StartingX;
		y = StartingY;
	break;	
		
	case GhostMode.FIRSTTURN:
		//UpdateGridGhost();
		
		//Get direction
		GhostUpdateHorVer();
		
		SetGhostSpeed();
		
		GhostMovementFirstTurn();
		
		
	break;
	
	case GhostMode.SCATTER:
	case GhostMode.CHASE:
	
	move_wrap(true, false, oGameManager.GridSize);

	//UpdateGridGhost();
	
	GetGhostTarget();
	
	SetGhostSpeed();
	
	GhostMovement();
	
	GhostDirection();
	
	//Get direction
	GhostUpdateHorVer();
	
	break;
		
	case GhostMode.EYESRETURN:
	
	move_wrap(true, false, oGameManager.GridSize);
	
	//UpdateGridGhost();
	
	GetGhostTarget();
	
	GhostMovementEyesReturn();
	
	GhostDirection();
	
	GhostUpdateHorVer();
		
	break;
		
		
		
		case GhostMode.FRIGHT:
		case GhostMode.FRIGHTFLASH:
		
		move_wrap(true, false, oGameManager.GridSize);

		//UpdateGridGhost();
		
		SetGhostSpeed();
		//Pick ran
		GhostRandomTurnMovement();
		
		//Get direction
		GhostUpdateHorVer();
		
		break;
		
		case GhostMode.GHOSTEATEN:
		if (PreviousMode == GhostMode.EYESRETURN)
		{
			image_alpha = 0; 
		}
		speed = 0;
		break;
		
		case GhostMode.EYESRETURNABOVEHOME:
		mp_linear_step( GetGridPos(14), GetCenterGridPos(14), oGameManager.GhostEyeReturnSpeed, false);
		if (x == GetGridPos(14) && y = GetCenterGridPos(14)) Mode = GhostMode.EYESRETURNINTOHOME;
		break;
		
		case GhostMode.EYESRETURNINTOHOME:
		mp_linear_step(GetGridPos(14), GetCenterGridPos(17), oGameManager.GhostEyeReturnSpeed, false);
		//Switch back to normal
		if (x == GetGridPos(14) && y = GetCenterGridPos(17))
		{
			Mode = GhostMode.SAFEZONE;
			speed = 0;
			vspeed = oGameManager.GhostTunnelSpeed;
			PreviousMode = -1;
		}
		break;
		
		case GhostMode.GOTOHOMEYCENTER:
		SetGhostSpeed();
		mp_linear_step(x, GetCenterGridPos(17), GhostSpeed, false);
		if (y == GetCenterGridPos(17))
		{
			Mode = GhostMode.GOTOHOMECENTER;	
		}
		break;
		
		case GhostMode.GOTOHOMECENTER:
		SetGhostSpeed();
		mp_linear_step(GetGridPos(14), GetCenterGridPos(17), GhostSpeed, false);
		if (x ==GetGridPos(14) && y == GetCenterGridPos(17))
		{
			Mode = GhostMode.LEAVEHOME;	
		}
		break;
		
		case GhostMode.LEAVEHOME:
		SetGhostSpeed();
		mp_linear_step(GetGridPos(14), GetCenterGridPos(14), GhostSpeed, false);
		if (x ==GetGridPos(14) && y == GetCenterGridPos(14))
		{
			if (!IsFrightened)
			{
				Mode = GhostMode.FIRSTTURN;
				ResetGhosts();
			}
			else 
			{
				if (oGameManager.Mode == GameMode.FRIGHT) Mode = GhostMode.FRIGHT;
				else if (oGameManager.Mode == GameMode.FRIGHTFLASH) Mode = GhostMode.FRIGHTFLASH;
				//neutralize vspeed
				speed = 0;
				direction = choose (0, 180);
				NextDirection = direction; // forces to run a space check so ghost does not freeze
				LastGridX = GridX;
				LastGridY = GridY;
			}
			
		}
		break;
		
		case GhostMode.SAFEZONE:
		if (image_alpha != 1){image_alpha =1;}
		HomeCounter();
		SafeZoneShuffle();	
		GhostDirection();
		break;
		
		case GhostMode.NEXTLEVELPAUSE:
		image_index = 0;
		speed = 0;
	
	default:
		//speed = 0;
		break;
}







