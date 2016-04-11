package com.ms.tomf.Screens.InGame
{
	import com.ms.tomf.Objects.Map;
	import com.ms.tomf.Objects.Player;
	import com.ms.tomf.Objects.MenuItems.PlayButton;
	import com.ms.tomf.Screens.Menus.InGameMenu;
	
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
			
			if(PlayButton.changeScreenKEY == "GAME")
			{}
			
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
			inGameContent.inGameMenu = new InGameMenu;
		}
		
		private function addInGameContent():void
		{
			this.addChild(inGameContent.physics);
			this.addChild(inGameContent.controls);
			this.addChild(inGameContent.map);
			this.addChild(inGameContent.player);
			this.addChild(inGameContent.ui);
			this.addChild(inGameContent.inGameMenu);
		}
	}
}