package com.ms.tomf.Screens.InGame
{
	import com.ms.tomf.Objects.Map;
	import com.ms.tomf.Objects.Player;
	
	import flash.display.MovieClip;
	import flash.display.Sprite;
	
	public class InGame extends MovieClip
	{
		private var minion:Sprite = new Sprite;
		private var inGameContent:Object = new Object;
		
		
		public function InGame()
		{
			
			defineInGameContent();
			addInGameContent();
			
		}
		
		private function defineInGameContent():void
		{
		
			inGameContent.map = new Map;
			inGameContent.player = new Player;
			inGameContent.ui = new UserInt;
		}
		
		private function addInGameContent():void
		{
			
			this.addChild(inGameContent.map);
			this.addChild(inGameContent.player);
			this.addChild(inGameContent.ui);
			
		}
	}
}