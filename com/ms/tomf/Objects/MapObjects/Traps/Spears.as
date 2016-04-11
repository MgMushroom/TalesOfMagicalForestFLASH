package com.ms.tomf.Objects.MapObjects.Traps
{
	import flash.display.MovieClip;
	import flash.media.Sound;
	import flash.net.URLRequest;
	import flash.events.Event;
	import com.ms.tomf.Screens.InGame.InGame;
	import com.ms.tomf.Objects.Player;
	
	public class Spears extends MovieClip
	{
		private var snd:Sound = new Sound(new URLRequest("Growl.mp3")); 
		private var sound:Object = new Object;
		
		public function Spears()
		{
			sound.count = 0;
			this.addEventListener(Event.ENTER_FRAME, whenCol);
		}
	
		public function whenCol(e:Event):void
		{
			if(this.hitTestObject(InGame.inGameContent.player))
			{Player.attributes.health -= 5;
				
				if(sound.count == 0){snd.play(); sound.count++;}
			}else{sound.count = 0;}
		}
	}
}