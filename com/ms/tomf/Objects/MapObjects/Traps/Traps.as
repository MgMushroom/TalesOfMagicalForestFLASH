package com.ms.tomf.Objects.MapObjects.Traps
{
	import flash.display.MovieClip;
	import com.ms.tomf.Objects.MapObjects.Traps.Spears;
	
	public class Traps extends MovieClip
	{
		public static var traps:Object = Object;
		
		public function Traps()
		{
			
			defineTrapsContent();
			addTrapsContent();
		}
	
		public function defineTrapsContent():void
		{
			traps.spears = new Spears;
		}
	
		public function addTrapsContent():void
		{
			this.addChild(traps.spears);
		}
	}
}