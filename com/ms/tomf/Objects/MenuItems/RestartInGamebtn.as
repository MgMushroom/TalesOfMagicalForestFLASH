package com.ms.tomf.Objects.MenuItems
{
	import com.ms.tomf.System.SaveSpots.Start;
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	public class RestartInGamebtn extends MovieClip
	{
		private var start:Start;
		
		public function RestartInGamebtn()
		{
			super();
		
			this.x = 600;
			this.y = 450;
			this.addEventListener(MouseEvent.CLICK, mouseClicked)
		}
		
		private function mouseClicked(e:MouseEvent):void
		{
			this.start = new Start;
			start.startUp();
		}
	}
}