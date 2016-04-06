package com.ms.tomf.Screens.InGame
{
	import flash.display.MovieClip;
	import flash.events.*;
	
	public class InGameDATA extends MovieClip
	{
		public static var gravity:Object = new Object;
		public static var movement:Object = new Object;
		public static var mouse:Object = new Object;
		public static var keyboard:Object = new Object;
		
		public function InGameDATA()
		{
			trace("ADDED INGAMEDATA");
			
			mouseData();
			keyData()
			gravityData()
			movementData()
			
			this.addEventListener(Event.ENTER_FRAME, checkDATA);
			
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
	
		private function gravityData():void
		{
			gravity.str = 15;
		}
	
		private function movementData():void
		{
			movement.speedX = 10;
			movement.speedY = 10;
			movement.smooth = 0.95;
		}
	
		private function checkDATA(e:Event):void
		{
			stage.addEventListener(KeyboardEvent.KEY_DOWN, checkKeyDown);
			stage.addEventListener(KeyboardEvent.KEY_UP, checkKeyUp);
			
			//updateParams();
		
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
	
		private function updateParams():void
		{

			
			if(InGameDATA.keyboard.w == true)
			{movement.speedY -= 1;}
			if(InGameDATA.keyboard.s == true)
			{movement.speedY += 1;}
			if(InGameDATA.keyboard.d == true)
			{movement.speedX += 1;}
			if(InGameDATA.keyboard.a == true)
			{movement.speedX -= 1;}
		}
	}
}