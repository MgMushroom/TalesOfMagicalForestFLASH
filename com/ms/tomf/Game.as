﻿package com.ms.tomf
{
	import com.ms.tomf.Objects.Player;
	import com.ms.tomf.Objects.MenuItems.PlayButton;
	import com.ms.tomf.Screens.InGame.Controls;
	import com.ms.tomf.Screens.InGame.InGame;
	import com.ms.tomf.Screens.Menus.MainMenu;
	import com.ms.tomf.System.SaveSpots.Start;
	import com.ms.tomf.Media.Music;
	
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.media.SoundChannel;
	import flash.media.Sound;
	public class Game extends MovieClip
	{
		private var mainMenu:MainMenu;
		private var inGame:InGame;
		private var start:Start;
		private var music:Music = new Music;
		
		public static var state:Object = new Object;
	
		public function Game()
		{		
			this.mainMenu = new MainMenu;	
			this.inGame = new InGame;	
			this.start = new Start;
			
			this.addChild(mainMenu);
			this.addChild(inGame);
			this.addChild(music);
			
			mainMenu.visible = true;
			inGame.visible = false;
			
			MainMenuSwitch();
			
			this.addEventListener(Event.ENTER_FRAME, restart);	
			
		}
		
		private function MainMenuSwitch():void
		{		
			this.addEventListener(Event.ENTER_FRAME, changeScreen);		
			if(PlayButton.changeScreenKEY == "NULL")
			{}
			
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
			
			
			if(Player.state.dead == true || Game.state.mainmenu == true)
			{
				PlayButton.changeScreenKEY = "NULL";
				Game.state.mainmenu = false;
				
				start.startUp();
				
				inGame.visible = false;
				mainMenu.visible = true;
				
				MainMenuSwitch();
			}
		}
	}
}