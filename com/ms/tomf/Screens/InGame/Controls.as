package com.ms.tomf.Screens.InGame
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	
	public class Controls extends MovieClip
	{
		public static var mouse:Object = new Object;
		public static var keyboard:Object = new Object;
		
		public function Controls()
		{
			trace("ADDED CONTROLS");
			
			mouseData();
			keyData();
			
			this.addEventListener(Event.ENTER_FRAME, checkKeys);
		}
	
		private function mouseData():void
		{
			mouse.dirX = 0;
			mouse.dirY = 0;
		}
		
		private function keyData():void
		{
			keyboard.w = false;
			keyboard.a = false;
			keyboard.d = false;
			keyboard.s = false;
		}
	
		private function checkKeys(e:Event):void
		{
			stage.addEventListener(KeyboardEvent.KEY_DOWN, checkKeyDown);
			stage.addEventListener(KeyboardEvent.KEY_UP, checkKeyUp);
		}
	
		private function checkKeyDown(e:KeyboardEvent):void
		{
			if(e.keyCode == 87){keyboard.w = true;}
			if(e.keyCode == 65){keyboard.a = true;}
			if(e.keyCode == 68){keyboard.d = true;}
			if(e.keyCode == 83){keyboard.s = true;}
		}
		
		private function checkKeyUp(e:KeyboardEvent):void
		{
			if(e.keyCode == 87){keyboard.w = false;}
			if(e.keyCode == 65){keyboard.a = false;}
			if(e.keyCode == 68){keyboard.d = false;}
			if(e.keyCode == 83){keyboard.s = false;}
		}
	}
}