package com.ms.tomf.Objects.ABS.Projectiles
{
	import com.ms.tomf.Objects.Player;
	import com.ms.tomf.Screens.InGame.Controls;
	import com.ms.tomf.Screens.InGame.InGame;
	import com.ms.tomf.Screens.InGame.Physics;
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	public class RangeSpear extends MovieClip
	{	
		private var spear:Object = new Object;
		
		public function RangeSpear(playerDirection:String)
		{
			Controls.keyboard.space = false;
			
			spear.fly = false;
			spear.dir = playerDirection;
			this.visible = true;
			
			if(spear.dir  == "right"){spear.speed = 40;
				this.x = InGame.inGameContent.player.x + 70;}
			
			
			if(spear.dir  == "left"){spear.speed = -40;
				this.x = InGame.inGameContent.player.x - 150;}
			
			this.y = InGame.inGameContent.player.y + 45;
			
			spear.startX = this.x 
			
			animation();
			
			this.addEventListener(Event.ENTER_FRAME, fly);
		}
		private function animation():void
		{
			if(spear.dir  == "right")
			{gotoAndStop("spearRight");}
			if(spear.dir  == "left")
			{gotoAndStop("spearLeft");}
		
			spear.know = InGame.inGameContent.player.x - InGame.inGameContent.map.x;
		}
		private function fly(e:Event):void
		{
			
			this.y -= Physics.movement.speedY;
			this.x -= Physics.movement.speedX;
			
			
			if(spear.dir == "right")
			{
				this.x += spear.speed;
				
				if ( this.x > spear.startX + 600)
				{
					remove();
				}
			}
			
			if(spear.dir == "left")
			{
				this.x += spear.speed;
				
				if ( this.x < spear.startX - 1200)
				{
					remove();
				}
			}
		}
		private function remove():void
		{
			//this.parent.removeChild(this);
		}

	}
}