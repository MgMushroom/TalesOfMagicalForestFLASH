package com.ms.tomf
{
	import com.ms.tomf.Screens.Menus.MainMenu;
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	
	public class Game extends MovieClip
	{
		private var menuSwitch:String;
		private var mainmenu:MainMenu;
		
		public function Game()
		{		
				this.mainmenu = new MainMenu	
				this.addChild(mainmenu);
		}
	}
}