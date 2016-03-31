package com.ms.tomf
{
	import flash.display.MovieClip;
	import flash.display.Stage;
	
	public class Engine extends MovieClip
	{
		private var mushroom:Mushroom = new Mushroom;
		private var ground:Ground = new Ground(stage);
		
		public function Engine()
		{
			
			hero();
			lol();
		}

		private function hero():void
		{
			mushroom.x = stage.stageWidth / 2;
			mushroom.y = 700;
			stage.addChild(mushroom);
		}
		
		private function lol():void
		{
			ground.x = -71,2;
			ground.y = -727,1
			stage.addChild(ground);
		}
	
	}
}