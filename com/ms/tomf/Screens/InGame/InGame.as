package com.ms.tomf.Screens.InGame
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	
	public class InGame extends MovieClip
	{
		private var minion:Sprite = new Sprite;
		
		public function InGame()
		{
			minion.graphics.lineStyle(3,0x000000);
			minion.graphics.beginFill(0x0000FF);
			minion.graphics.drawRect(0,0,500,500);
			minion.graphics.endFill();
			addChild(minion);
		}
	}
}