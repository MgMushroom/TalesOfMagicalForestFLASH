package com.ms.tomf
{
	import com.ms.tomf.Control;
	
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	
	public class Engine extends MovieClip
	{
		private var mushroom:Mushroom = new Mushroom;
		private var ground:Ground = new Ground();
		private var textF:TextField = new TextField;
		private var test1:Control = new Control;
		private var test2:Number = test1.testNum();
		private var touchX:Number;
		private var touchY:Number;
		private var currentX:String;
		private var currentY:String;
		private var array:Array = new Array(0,0);
		private var test:Number;
		
		public function Engine()
		{
			
			hero();
			lol();
			text();
			
			stage.addEventListener(Event.ENTER_FRAME, checkKeys);
			
		}

		private function text():void
		{
			textF.border = true;
			textF.background = true;
			textF.backgroundColor = 0xFF0000;
			
			stage.addChild(textF);
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
		
		private function checkKeys(e:Event):void
		{
			this.addEventListener(KeyboardEvent.KEY_DOWN, keysDown);
			this.addEventListener(KeyboardEvent.KEY_UP, keysUp);
			stage.addEventListener(MouseEvent.MOUSE_MOVE, onTouch);
		
			currentX = String(touchX);
			currentY = String(touchY);
			MouseDir();
			array = MouseDir();
			
			textF.text ="X: " + array[0] + "\n" + "Y: " + array[1] ;
			
		}
		
		private function MouseDir():Array
		{
			var outputX:Number = touchX;
			var outputY:Number = touchY;
			
			return [outputX, outputY];
		}
		private function keysDown(e:KeyboardEvent):void
		{
			
		}
		
		private function keysUp(e:KeyboardEvent):void
		{
			
		}
		
		private function onTouch(event:MouseEvent)
		{
			touchX = stage.mouseX;
			touchY = stage.mouseY;
		}		
	}
}