package com.ms.tomf.Objects
{
	import com.ms.tomf.Objects.MapObjects.Background;
	import com.ms.tomf.Objects.MapObjects.Ground;
	import com.ms.tomf.Screens.InGame.InGameDATA;
	
	import flash.display.MovieClip;
	import flash.events.*;
	
	public class Map extends MovieClip
	{
		private var mapContent:Object = new Object;
		
		public function Map()
		{
			defineMapContent();
			addMapContent();
			this.addEventListener(Event.ENTER_FRAME, updateMapParams);
		}
		
		private function updateMapParams(e:Event):void
		{
			
		}
		
		private function defineMapContent():void
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