package com.ms.tomf.Objects.MapObjects.Enemies
{
	import com.ms.tomf.Objects.Player;
	import com.ms.tomf.Objects.Map;
	import com.ms.tomf.Screens.InGame.InGame;
	import com.ms.tomf.Screens.InGame.UserInt;
	import com.ms.tomf.Objects.Player;
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	public class Worm extends MovieClip
	{

		public function Worm()
		{
			this.y = 800;
			this.x = 2500;
			this.addEventListener(Event.ENTER_FRAME, collision)
		}
		private function collision(E:Event)//Collision and checking if worm is close enough of player
		{
<<<<<<< HEAD
			
			
			if(this.hitTestObject(InGame.inGameContent.player))
			{Player.attributes.health -= 100;}
			
			if (InGame.inGameContent.player.x -InGame.inGameContent.map.x >= (this.x - 600) )	
=======
			trace((InGame.inGameContent.player.x - InGame.inGameContent.map.x)/*- (this.x - 600)*/+ "\n" +
				(this.x));
	
			if(this.hitTestObject(InGame.inGameContent.player))
			{Player.attributes.health -= 0;}
			if ((InGame.inGameContent.player.x - InGame.inGameContent.map.x >= this.x - 600 && (InGame.inGameContent.player.x - InGame.inGameContent.map.x <= this.x - 200)))
>>>>>>> origin/master
			{
				this.x -= 8;
				
			}
			if ((InGame.inGameContent.player.x - InGame.inGameContent.map.x >= this.x - 600 && (InGame.inGameContent.player.x - InGame.inGameContent.map.x <= this.x + 300)))
			{
				this.x += 4;
			}		
		}
	}
}