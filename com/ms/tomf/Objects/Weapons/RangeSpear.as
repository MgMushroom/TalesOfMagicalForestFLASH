package com.ms.tomf.Objects.Weapons
{
	import com.ms.tomf.Screens.InGame.Controls;
	import com.ms.tomf.Screens.InGame.InGame;
	import com.ms.tomf.Objects.Player;
	import flash.display.MovieClip;
	import flash.events.Event;
	
	public class RangeSpear extends MovieClip
	{	
		private var spear:Object = new Object;
		
		public function RangeSpear()
		{
			spear.fly = false;
			this.visible = false;
			
			this.x = InGame.inGameContent.player.x;
			this.y = InGame.inGameContent.player.y;
			
			spear.currentX = this.x 
			
			
			this.addEventListener(Event.ENTER_FRAME, animation);
			this.addEventListener(Event.ENTER_FRAME, fly);
		}
		private function animation(e:Event):void
		{
			if(Controls.mouse.x < this.x)
			{gotoAndPlay("spearLeft");}
			if(Controls.mouse.x > this.x)
			{gotoAndPlay("spearRight");}
		
			spear.know = InGame.inGameContent.player.x - InGame.inGameContent.map.x;
		}
		private function fly(e:Event):void
		{
			
			trace(this.x);
			if(Controls.keyboard.space)
			{this.visible = true;
				this.removeEventListener(Event.ENTER_FRAME, animation)
			spear.fly = true;}
			
			if(spear.fly == true && InGame.inGameContent.player.x < Controls.mouse.x)
			{
				this.x += 30;
				if ( this.x > spear.currentX + 600)
				{spear.fly = false;
					
					this.visible = false;
					this.x = InGame.inGameContent.player.x;
					this.y = InGame.inGameContent.player.y;
					Controls.keyboard.space = false;
					this.addEventListener(Event.ENTER_FRAME, animation)
					
				}
			}
			
			if(spear.fly == true && InGame.inGameContent.player.x > Controls.mouse.x)
			{
				this.x -= 30;
				if ( this.x < spear.currentX - 600)
				{spear.fly = false;
					
					this.visible = false;
					this.x = InGame.inGameContent.player.x;
					this.y = InGame.inGameContent.player.y;
					Controls.keyboard.space = false;
					this.addEventListener(Event.ENTER_FRAME, animation)
					
				}
			}
		}
	}
}