package com.ms.tomf.Objects.MenuItems
{
	import com.ms.tomf.Screens.Menus.MainMenu;
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.MouseEvent;

	public class PlayButton extends MovieClip
	{	
		public static var changeScreenKEY:String = "NULL";
		
		public function PlayButton()
		{
			this.x =  600;
			this.y = 500
			this.addEventListener(MouseEvent.CLICK, mouseClicked)
		}
		private function mouseClicked(E:Event)
		{
			changeScreenKEY = "GAME"
			trace(MainMenu.screenKEY)
		}
			
	}
}