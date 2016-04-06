package com.ms.tomf.Screens.InGame
{
	import com.ms.tomf.Objects.Map;
	import com.ms.tomf.Objects.Player;
	
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	
	public class InGame extends MovieClip
	{
		private var minion:Sprite = new Sprite;
		private var inGameContent:Object = new Object;
		
		
		public function InGame()
		{
			
			
			
			
			trace("INGAME ACTIVED");
			defineInGameContent();
			addInGameContent();
			this.addEventListener(Event.ENTER_FRAME, moveMap);
		}
			
		private function defineInGameContent():void
		{
		
			inGameContent.map = new Map;
			inGameContent.player = new Player;
			inGameContent.inGameData = new InGameDATA;
			inGameContent.ui = new UserInt;
		}
		
		private function addInGameContent():void
		{
			
			this.addChild(inGameContent.map);
			this.addChild(inGameContent.player);
			this.addChild(inGameContent.ui);
			this.addChild(inGameContent.inGameData);
		}
	
		private function moveMap(e:Event):void
		{
			inGameContent.map.y -= InGameDATA.movement.speedY;
			inGameContent.map.y += InGameDATA.movement.speedY;
			inGameContent.map.x += InGameDATA.movement.speedX;
			inGameContent.map.x -= InGameDATA.movement.speedX;
			
			trace(InGameDATA.movement.speedY);
			
		}
	}
}