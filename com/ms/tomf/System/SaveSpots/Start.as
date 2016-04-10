package com.ms.tomf.System.SaveSpots
{
	import com.ms.tomf.Objects.Player;
	import com.ms.tomf.Screens.InGame.InGame;
	import com.ms.tomf.Screens.InGame.Physics;
	
	import flash.display.MovieClip;
	
	public class Start extends MovieClip
	{
		public function Start()
		{
		 ("THIS IS SAVE CLASS");	
		}
		
		public function startUp():void
		{
			Player.attributes.health = 100;
			Player.attributes.stamina = 100;
			Player.state.dead = false;
		
			Physics.movement.scrollY = 0;
			Physics.movement.scrollX = 0;
		}
	}
}