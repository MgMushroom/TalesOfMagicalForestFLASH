package com.ms.tomf.Screens.Menus
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	
	public class MainMenu extends MovieClip
	{
		private var minion:Sprite = new Sprite;
		
		//public static var lol:String;
		
		public function MainMenu()
		{
			minion.graphics.lineStyle(3,0x000000);
			minion.graphics.beginFill(0xFF0000);
			minion.graphics.drawRect(0,0,500,500);
			minion.graphics.endFill();
			addChild(minion);
		}
	}
}