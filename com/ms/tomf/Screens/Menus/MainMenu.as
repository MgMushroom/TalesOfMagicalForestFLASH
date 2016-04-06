package com.ms.tomf.Screens.Menus
{
	import com.ms.tomf.Objects.MenuItems.MainMenuBG;
	import com.ms.tomf.Objects.MenuItems.PlayButton;
	
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	
	public class MainMenu extends MovieClip
	{
		private var minion:Sprite = new Sprite;

		private var playButton:PlayButton = new PlayButton;
		private var mainMenuBg:MainMenuBG = new MainMenuBG;
		public static var screenKEY:String = "NULL";

		public function MainMenu()
		{
			
			
			this.addEventListener(Event.ENTER_FRAME, playButtonCheck);
			
			addChild(mainMenuBg);
			addChild(playButton);
		}
	
		private function playButtonCheck(e:Event):void
		{
			screenKEY = PlayButton.changeScreenKEY;
			
		}
	}
}