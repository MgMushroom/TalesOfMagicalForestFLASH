package com.ms.tomf.Objects.Weapons
{
	import com.ms.tomf.Objects.Weapons.RangeSpear;
	
	import flash.display.MovieClip;
	
	public class Weapons extends MovieClip
	{
		private var weapons:Object = new Object;
		
		public function Weapons()
		{
			setWeaponsContent();
			addWeaponsContent();
		}
	
		public function setWeaponsContent():void
		{
			weapons.spear = new RangeSpear;
		}
		
		public function addWeaponsContent():void
		{
			this.addChild(weapons.spear);
		}
	}
}