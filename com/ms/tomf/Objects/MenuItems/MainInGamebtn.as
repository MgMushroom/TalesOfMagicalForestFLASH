package com.ms.tomf.Objects.MenuItems
{
	import com.ms.tomf.Game;
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	public class MainInGamebtn extends MovieClip
	{
		public function MainInGamebtn()
		{
			super();
			this.x = 600;
			this.y = 350;
			this.addEventListener(MouseEvent.CLICK, mouseClicked)
		}
		
		private function mouseClicked(e:MouseEvent):void
		{
			Game.state.mainmenu = true;
		}
	}
}