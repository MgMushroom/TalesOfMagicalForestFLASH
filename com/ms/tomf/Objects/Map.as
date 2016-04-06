package com.ms.tomf.Objects
{
	import com.ms.tomf.Objects.MapObjects.Background;
	import com.ms.tomf.Objects.MapObjects.Ground;
	
	import flash.display.MovieClip;
	
	public class Map extends MovieClip
	{
		private var mapContent:Object = new Object;
		
		public function Map()
		{
			defineMapContent();
			addMapContent();
		}
		
		private function defineMapContent()
		{
			mapContent.ground = new Ground;
			mapContent.background = new Background;
		}
	
		private function addMapContent():void
		{
			this.addChild(mapContent.background);
			this.addChild(mapContent.ground);
			
		}
	}
}