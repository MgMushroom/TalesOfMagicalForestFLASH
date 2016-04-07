package com.ms.tomf.Objects.MapObjects.Traps
{
	import flash.display.MovieClip;
	import flash.events.Event;
	import com.ms.tomf.Screens.InGame.InGame;
	import com.ms.tomf.Objects.Player;
	public class Spears extends MovieClip
	{
		public function Spears()
		{
			this.addEventListener(Event.ENTER_FRAME, whenCol);
		}
	
		public function whenCol(e:Event):void
		{
			if(this.hitTestObject(InGame.inGameContent.player))
			{Player.attributes.health -= 5;}
		}
	}
}