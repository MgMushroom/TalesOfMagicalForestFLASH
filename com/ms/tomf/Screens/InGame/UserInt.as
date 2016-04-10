package com.ms.tomf.Screens.InGame
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	
	import com.ms.tomf.Objects.Player;
	
	public class UserInt extends MovieClip
	{
		private var bars:Object = new Object;
		private var textF:TextField = new TextField;
		
		public function UserInt()
		{
			addBars();
			this.addEventListener(Event.ENTER_FRAME, showPlayerParams);
		}
		
		public function addBars():void
		{
			
			
			textF.background = true;
			textF.backgroundColor = 0xFF0000;
			this.addChild(textF);
			
			bars.health = new Sprite;
			bars.health.graphics.lineStyle(3,0x000000);
			bars.health.graphics.beginFill(0xFF0000);
			bars.health.graphics.drawRect(0,0,200,20);
			bars.health.graphics.endFill();
			bars.health.x = 100;
			bars.health.y = 100;
		
			bars.stamina = new Sprite;
			bars.stamina.graphics.lineStyle(3,0x000000);
			bars.stamina.graphics.beginFill(0xFFFF00);
			bars.stamina.graphics.drawRect(0,0,200,20);
			bars.stamina.graphics.endFill();
			bars.stamina.x = 100;
			bars.stamina.y = 150;
		
			this.addChild(bars.health);
			this.addChild(bars.stamina);
		
		}
	
		public function showPlayerParams(e:Event):void
		{
			textF.text = "mouseX: " + String(Controls.mouse.x)+ "\n" 
				+ "mouseY: " + String(Controls.mouse.y);
			
			bars.health.width = Player.attributes.health * 2;
			bars.stamina.width = Player.attributes.stamina * 2;
		}
	}
}