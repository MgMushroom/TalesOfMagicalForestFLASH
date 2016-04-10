package com.ms.tomf
{
	import com.ms.tomf.Objects.Player;
	import com.ms.tomf.Screens.InGame.InGame;
	import com.ms.tomf.Screens.Menus.MainMenu;
	import com.ms.tomf.Objects.MenuItems.PlayButton;
	import com.ms.tomf.Screens.InGame.Controls;
	import com.ms.tomf.System.SaveSpots.Start;
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.system.*;
	import flash.display.Stage;
	
	public class Game extends MovieClip
	{
		private var mainMenu:MainMenu;
		private var inGame:InGame;
		private var start:Start;
		
		public function Game()
		{		
			this.mainMenu = new MainMenu;	
			this.inGame = new InGame;	
			this.start = new Start;
			
			this.addChild(mainMenu);
			this.addChild(inGame);
			
			mainMenu.visible = true;
			inGame.visible = false;
			
			MainMenuSwitch();
			
			this.addEventListener(Event.ENTER_FRAME, restart);	
			
		}
		
		private function MainMenuSwitch():void
		{		
			this.addEventListener(Event.ENTER_FRAME, changeScreen);		
		}
		
		private function changeScreen(e:Event)
		{		

		if(com.ms.tomf.Screens.Menus.MainMenu.screenKEY == "GAME")
		{
			
			start.startUp();	
			
			mainMenu.visible = false;
			inGame.visible = true;
			
			this.removeEventListener(Event.ENTER_FRAME, changeScreen);
		}
			
		}
	
		private function restart(e:Event):void
		{		
			
			
			if(Player.state.dead == true)
			{
				PlayButton.changeScreenKEY = "NULL";
				
				start.startUp();
				
				inGame.visible = false;
				mainMenu.visible = true;
				
				MainMenuSwitch();
			}
		}
	}
}