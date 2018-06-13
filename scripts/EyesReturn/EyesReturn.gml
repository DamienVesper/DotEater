/*
Questions to address:
- Which ghost(s) runs this script?
- Scope(i.e. oBlinky.image_alpha instead of image_alpha). See question above.



*/

//Eyes Return switch
switch(GhostMode) {
	case GhostModes.EYESRETURN:

		if (image_alpha = 0) image_alpha = 1;	
		
		move_wrap(true, false, oGameManager.GridSize);
		
		//Update Grid Info of Ghost ?
		
		//UpdateGridGhost();
		GetGhostTarget();	
		GhostMovementEyesReturn();
		GhostDirection();
		GhostUpdateHorVer();
	break;

	case GhostModes.EYESRETURNABOVEHOME:
		mp_linear_step( GetGridPos(14), GetCenterGridPos(14), oGameManager.GhostEyeReturnSpeed, false);
		if (x == GetGridPos(14) && y == GetCenterGridPos(14)) GhostMode = GhostModes.EYESRETURNINTOHOME;
	break;

	case GhostModes.EYESRETURNINTOHOME:
		mp_linear_step(GetGridPos(14), GetCenterGridPos(17), oGameManager.GhostEyeReturnSpeed, false);
		//Switch back to normal

		if (x == GetGridPos(14) && y == GetCenterGridPos(17)) {
			GhostMode = GhostModes.SAFEZONE;
			speed = 0;
			vspeed = oGameManager.GhostTunnelSpeed;
		}
	break;
}
