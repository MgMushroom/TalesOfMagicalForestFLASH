package com.ms.tomf.Objects.MenuItems
{
	import com.ms.tomf.Screens.Menus.MainMenu;
	
	import flash.display.MovieClip;
	import flash.events.*
	import flash.events.MouseEvent;
	import flash.system.fscommand;

	public class ExitButton extends MovieClip
	{
		public function ExitButton()
		{

			this.x = 590;
			this.y = 625;
			this.addEventListener(MouseEvent.MOUSE_DOWN, mouseClickedE)
		}
		
		private function mouseClickedE(E:Event):void

		{ 
			fscommand("quit");
		}
	}
}