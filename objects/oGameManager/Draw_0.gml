/// @description Player Ready Text

switch(Mode)
{
	
	case GameMode.PLAYERREADY:
	
	lblue = make_colour_rgb(116, 166, 247);

	draw_set_font(fPlayerReady);
	
	draw_set_color(lblue);
	
	draw_set_halign(fPlayerReady);
	
	draw_text(385, 445, "Player");
	
	draw_set_color(c_yellow);

	draw_text(390, 630, "Ready");

	break;
	
	case GameMode.GHOSTEATEN:
	draw_set_color(lblue);
	draw_set_font(fGhostEatenScore);
	draw_text(oPacMan.x - 16, oPacMan.y - 16, GhostScore);
		
	break;
	
}


	with (oGhostParent)
	{
		if (oGameManager.IsInGame && oGameManager.DrawDebug && !IsEdible)
		{
			draw_set_color(c_green);
			draw_line(x, y, TargetX, TargetY);
			draw_line_width(x, y, TargetX, TargetY, 5);
		}
	}
	//enum GameMode {CHASE, SCATTER, PLAYERDEAD, PREGAME, PLAYERREADY, 
	//FRIGHT, EYESRETURN, GHOSTEATEN, RETURNTOSAFEZONE, SAFEZONE,
//	LEAVINGSAFEZONE}
	if (DrawDebug)
	{
		draw_set_font(fDebug);
		var GameModeText = "";
		switch (Mode)
		{
			case GameMode.CHASE:
			GameModeText = "Chase";
			break;
			
			case GameMode.SCATTER:
			GameModeText = "Scatter";
			break;
			
			case GameMode.PLAYERDEAD:
			GameModeText = "Player Dead";
			break;
			
			case GameMode.PREGAME:
			GameModeText = "Game Start";
			break;
			
			case GameMode.PLAYERREADY:
			GameModeText = "Player Ready";
			break;	
			
			case GameMode.GHOSTEATEN:
			GameModeText = "Ghost Eaten";
			break;	
			
			case GameMode.FRIGHT:
			GameModeText = "Fright";
			break;	
			
		}

		
		var BlinkyModeText = "";
		
		switch (oBlinky.Mode)
		{
			case GhostMode.CHASE:
			BlinkyModeText = "Chase";
			break;
			
			case GhostMode.SCATTER:
			BlinkyModeText = "Scatter";
			break;
			
			case GhostMode.PLAYERDEAD:
			BlinkyModeText = "Player Dead";
			break;
			
			case GhostMode.PREGAME:
			BlinkyModeText = "Game Start";
			break;
			
			case GhostMode.PLAYERREADY:
			BlinkyModeText = "Player Ready";
			break;	
			
			case GhostMode.EYESRETURN:
			BlinkyModeText = "Eyes Return";
			break;
			
			case GhostMode.FIRSTTURN:
			BlinkyModeText = "First Turn";
			break;
			
			case GhostMode.GHOSTEATEN:
			BlinkyModeText = "Ghost Eaten";
			break;
			
			case GhostMode.LEAVINGSAFEZONE:
			BlinkyModeText = "Leaving Safe Zone";
			break;
			
			case GhostMode.RETURNTOSAFEZONE:
			BlinkyModeText = "Return to Safe Zone";
			break;
			
			case GhostMode.SAFEZONE:
			BlinkyModeText = "Safe Zone";
			break;
			
			case GhostMode.FRIGHT:
			BlinkyModeText = "Fright";
			break;
		}
		
		var PinkyModeText = "";
				
		switch (oPinky.Mode)
		{
			case GhostMode.CHASE:
			PinkyModeText = "Chase";
			break;
			
			case GhostMode.SCATTER:
			PinkyModeText = "Scatter";
			break;
			
			case GhostMode.PLAYERDEAD:
			PinkyModeText = "Player Dead";
			break;
			
			case GhostMode.PREGAME:
			PinkyModeText = "Game Start";
			break;
			
			case GhostMode.PLAYERREADY:
			PinkyModeText = "Player Ready";
			break;	
			
			case GhostMode.EYESRETURN:
			PinkyModeText = "Eyes Return";
			break;
			
			case GhostMode.FIRSTTURN:
			PinkyModeText = "First Turn";
			break;
			
			case GhostMode.GHOSTEATEN:
			PinkyModeText = "Ghost Eaten";
			break;
			
			case GhostMode.LEAVINGSAFEZONE:
			PinkyModeText = "Leaving Safe Zone";
			break;
			
			case GhostMode.RETURNTOSAFEZONE:
			PinkyModeText = "Return to Safe Zone";
			break;
			
			case GhostMode.SAFEZONE:
			PinkyModeText = "Safe Zone";
			break;
			
			case GhostMode.FRIGHT:
			PinkyModeText = "Fright";
			break;
		}
		draw_text(30, 15, "Game Mode: " + GameModeText);
		draw_text(30, 40, "Pac Speed: " + string(oPacMan.speed));
		draw_text(500, 15, "Blinky Mode: " + BlinkyModeText);
		draw_text(500, 40, "Pinky Mode: " + PinkyModeText);
		
	}
	
	
	