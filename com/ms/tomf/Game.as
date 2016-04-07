package com.ms.tomf
{
	import com.ms.tomf.Objects.Player;
	import com.ms.tomf.Screens.InGame.InGame;
	import com.ms.tomf.Screens.Menus.MainMenu;
	import com.ms.tomf.Objects.MenuItems.PlayButton;
	import flash.display.MovieClip;
	import flash.events.Event;
	
	
	public class Game extends MovieClip
	{
		private var mainMenu:MainMenu;
		private var inGame:InGame;
		
		public function Game()
		{		
			this.mainMenu = new MainMenu;	
			MainMenuSwitch();
			this.addEventListener(Event.ENTER_FRAME, restart);	
			
			
		}
		
		private function MainMenuSwitch():void
		{		
			this.addChild(mainMenu);
			this.addEventListener(Event.ENTER_FRAME, changeScreen);		
		}
		
		private function changeScreen(e:Event)
		{		

		
			if(com.ms.tomf.Screens.Menus.MainMenu.screenKEY == "GAME")
		{
			
			this.removeChild(mainMenu);
			this.inGame = new InGame;	
			this.addChild(inGame);
		
			this.removeEventListener(Event.ENTER_FRAME, changeScreen);
		}
			
		}
	
		private function restart(e:Event):void
		{		
			if(Player.state.dead == true)
			{
				PlayButton.changeScreenKEY = "NULL";
				removeChild(inGame);
				Player.state.dead = false;
				MainMenuSwitch();
				}
		}
	}
}