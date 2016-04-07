package com.ms.tomf
{
	import com.ms.tomf.Screens.InGame.InGame;
	import com.ms.tomf.Screens.Menus.MainMenu;
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	
	public class Game extends MovieClip
	{
		private var mainMenu:MainMenu;
		private var inGame:InGame;
		
		public function Game()
		{		
			this.mainMenu = new MainMenu;	
			

			


			this.addChild(mainMenu);
			
			this.addEventListener(Event.ENTER_FRAME, changeScreen);						
		}
		
		private function changeScreen(e:Event)
		{		


			//trace(screenKEY);

	
		if(com.ms.tomf.Screens.Menus.MainMenu.screenKEY == "GAME")
		{
			
			this.removeChild(mainMenu);
			this.inGame = new InGame;	
			this.addChild(inGame);
		
			this.removeEventListener(Event.ENTER_FRAME, changeScreen);
		}
			
		
		}
	}
}