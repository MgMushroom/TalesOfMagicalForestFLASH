package com.ms.tomf.Objects.MenuItems
{
	import com.ms.tomf.Screens.Menus.MainMenu;
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.MouseEvent;

	public class PlayButton extends MovieClip
	{	
		
		public function PlayButton()
		{
			this.x =  600;
			this.y = 500
			this.addEventListener(MouseEvent.CLICK, mouseClicked)
		}
		private function mouseClicked(E:Event)
		{
			//screenKEY = "GAME"
			trace("lol")
		}
			
	}
}