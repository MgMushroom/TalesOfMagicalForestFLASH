package com.ms.tomf
{	
	
	import com.senocular.utils.KeyObject;
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.ui.Keyboard;
	import flash.events.Event;
	
	public class Ground extends MovieClip
	{
		private var stageRef:Stage;
		private var keys:KeyObject;
		
		public function Ground(stageRef:Stage)
		{
			this.stageRef = stageRef;
			keys = new KeyObject(stageRef);
		
			addEventListener(Event.ENTER_FRAME, loop, false, 0, true);
		}
	
		private function loop(e:Event):void
		{
			y--;
		}
	}
}