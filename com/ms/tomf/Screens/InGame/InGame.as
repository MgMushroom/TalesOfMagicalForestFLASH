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
		public static var inGameContent:Object = new Object;
		
		
		public function InGame()
		{
			trace("INGAME ACTIVED");
			defineInGameContent();
			addInGameContent();
		}
			
		private function defineInGameContent():void
		{
			inGameContent.physics = new Physics;
			inGameContent.controls = new Controls;
			inGameContent.map = new Map;
			inGameContent.player = new Player;
			inGameContent.ui = new UserInt;
			
		}
		
		private function addInGameContent():void
		{
			this.addChild(inGameContent.physics);
			this.addChild(inGameContent.controls);
			this.addChild(inGameContent.map);
			this.addChild(inGameContent.player);
			this.addChild(inGameContent.ui);
			
		}
	}
}