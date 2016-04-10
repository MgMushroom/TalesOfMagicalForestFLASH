package com.ms.tomf.Screens.InGame
{
	import com.ms.tomf.Objects.Player;
	
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	
	public class Controls extends MovieClip
	{
		public static var mouse:Object = new Object;
		public static var keyboard:Object = new Object;
		
		public function Controls()
		{
			trace("ADDED CONTROLS");
			
			keyData();
			
			this.addEventListener(Event.ENTER_FRAME, checkKeys);
		}
		
		private function mouseData():void
		{
		
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
			if(Player.state.dead == true)
			{stage.removeEventListener(KeyboardEvent.KEY_DOWN, checkKeyDown);}
			else{stage.addEventListener(KeyboardEvent.KEY_DOWN, checkKeyDown);}
			
			if(Player.state.dead == true)
			{stage.removeEventListener(KeyboardEvent.KEY_DOWN, checkKeyUp);}
			else{stage.addEventListener(KeyboardEvent.KEY_UP, checkKeyUp);}
		
			if(Player.state.dead == true)
			{stage.removeEventListener(MouseEvent.MOUSE_MOVE, checkDirection);}
			else{stage.addEventListener(MouseEvent.MOUSE_MOVE, checkDirection);}
			
		}
		private function checkDirection(e:MouseEvent):void
		{
			
			mouse.x = mouse.dirX;
			mouse.y = mouse.dirY;
			
			mouse.dirX = stage.mouseX;
			mouse.dirY = stage.mouseY;
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