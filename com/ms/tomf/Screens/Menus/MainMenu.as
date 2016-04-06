package com.ms.tomf.Screens.Menus
{
	import com.ms.tomf.Objects.MenuItems.MainMenuBG;
	import com.ms.tomf.Objects.MenuItems.PlayButton;
	
	import flash.display.MovieClip;
	import flash.display.Sprite;
	
	public class MainMenu extends MovieClip
	{
		private var minion:Sprite = new Sprite;
		private var playButton:PlayButton = new PlayButton;
		private var mainMenuBg:MainMenuBG = new MainMenuBG;
		public static var screenKEY:String = "MAIN";
		
		public function MainMenu()
		{
			/*minion.graphics.lineStyle(3,0x000000);
			minion.graphics.beginFill(0xFF0000);
			minion.graphics.drawRect(0,0,500,500);
			minion.graphics.endFill();
			addChild(minion);*/
			
			addChild(mainMenuBg);
			addChild(playButton);
		}
	}
}