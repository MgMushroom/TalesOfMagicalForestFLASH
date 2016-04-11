package com.ms.tomf.Media
{
	import flash.display.MovieClip;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.net.URLRequest;
		
	public class Music extends MovieClip
	{
		public static var music:Object = new Object;
		
		public function Music()
		{
			menuMusic();
			inGameMusic();
		}
		private function menuMusic():void
		{
			music.menu1 = new Sound(new URLRequest("menu1.mp3")); 
			music.menu1Channel = new SoundChannel
			music.menu1Channel  = music.menu1;
		}
		
		private function inGameMusic():void
		{
			
		}
	}
}