package com.ms.tomf.Objects.ABS.Projectiles
{
	import com.ms.tomf.Objects.Player;
	import com.ms.tomf.Objects.ABS.Projectiles.RangeSpear;
	import com.ms.tomf.Screens.InGame.Controls;
	import com.ms.tomf.Objects.Player;
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	public class ABS extends MovieClip
	{
		private var weapons:Object = new Object;
		
		public function ABS()
		{
			setWeaponsContent();
			addWeaponsContent();
			this.addEventListener(Event.ENTER_FRAME, projectiles);
		}
	
		public function setWeaponsContent():void
		{
			
		}
		
		public function addWeaponsContent():void
		{
			
		}
	
		public function projectiles(e:Event):void
		{
			if(Controls.keyboard.space)
			{weapons.spear = new RangeSpear(Player.state.dir);
				this.addChild(weapons.spear);
				}
		}
	}
}